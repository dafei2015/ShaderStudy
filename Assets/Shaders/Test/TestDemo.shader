Shader "浅墨Shader编程/Shader框架示例"
{
	Properties
	{
		_MainTex("基本纹理",2D) = "white"{TexGen ObjectLinear}
	}

	SubShader
	{
		Pass
		{
			SetTexture[_MainTex]{combine texture}
		}
	}
	Fallback "Diffuse"
}