Includes = {
	"buttonstate.fxh"
}
PixelShader =
{
	Samplers =
	{
		MapTexture =
		{
			Index = 0
			MagFilter = "Point"
			MinFilter = "Point"
			MipFilter = "None"
			AddressU = "Clamp"
			AddressV = "Clamp"
		}
	}
}
VertexStruct VS_OUTPUT
{
	float4  vPosition : PDX_POSITION;
	float2  vTexCoord : TEXCOORD0;
};
VertexShader =
{
	MainCode VertexShader
	[[
		VS_OUTPUT main(const VS_INPUT v )
		{
		    VS_OUTPUT Out;
		    Out.vPosition = float4(v.vPosition.xyz, 1); //устанавливаем вектора xyzw для их вращения
            float angle = (Time - AnimationTime); //раз мы вращаем, то итоговый повротот это time * speed, speed у нас константа
            float s = sin (angle); //находим синус от угла
            float c = cos (angle); //находим косинус от угла
            Out.vPosition.xy -= 80; //смещаем объект (ег оначало) в его центр, чтобы его вращение было по центру
			float x = Out.vPosition.x * s - Out.vPosition.y * c;
			float y = Out.vPosition.x * c + Out.vPosition.y * s;
			Out.vPosition.xy = float2(x , y);//использую матрицу поворота поворачиваем
            Out.vPosition.xy += 80; //возвращаем центр объекта обраьно в 0
            Out.vPosition = mul(WorldViewProjectionMatrix, Out.vPosition); //вращаем объект в мире, ПОЛСЕ РАБОТЫ С НИМ!
            //если если сделать ДО, то получатся искажения, потому что float4x4 содержит еще информацию
            Out.vTexCoord = v.vTexCoord; //устанавливаем векторы текстуры (ее можно вращать)
		    return Out;	
		}
	]]
}
PixelShader =
{
	MainCode PixelShader
	[[
		float4 main( VS_OUTPUT v ) : PDX_COLOR {
			return tex2D(MapTexture, v.vTexCoord);  //выозвращаем цвет пикселя текстуры по поординатам
		}	
	]]
}
BlendState BlendState
{
	BlendEnable = yes
	AlphaTest = no
	SourceBlend = "src_alpha"
	DestBlend = "inv_src_alpha"
}
Effect Up
{
	VertexShader = "VertexShader"
	PixelShader = "PixelShader"
}
Effect Down
{
	VertexShader = "VertexShader"
	PixelShader = "PixelShader"
}
Effect Disable
{
	VertexShader = "VertexShader"
	PixelShader = "PixelShader"
}
Effect Over
{
	VertexShader = "VertexShader"
	PixelShader = "PixelShader"
}
