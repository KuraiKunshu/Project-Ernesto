#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _199 = 0.0f.xxxx;

cbuffer View
{
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c109);
    float3 View_View_RelativePreViewTranslationTO : packoffset(c112);
    float4 View_View_BufferSizeAndInvSize : packoffset(c139);
    float View_View_PreExposure : packoffset(c143.z);
    float4 View_View_DiffuseOverrideParameter : packoffset(c144);
    float4 View_View_SpecularOverrideParameter : packoffset(c145);
    float4 View_View_NormalOverrideParameter : packoffset(c146);
    float2 View_View_RoughnessOverrideParameter : packoffset(c147);
    float View_View_OutOfBoundsMask : packoffset(c148);
    float View_View_MaterialTextureMipBias : packoffset(c151);
    float View_View_UnlitViewmodeMask : packoffset(c153.z);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c166);
    float View_View_RenderingReflectionCaptureMask : packoffset(c190.w);
    float View_View_ShowDecalsMask : packoffset(c204.w);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c236.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c243);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c244);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c245);
    float View_View_VolumetricLightmapBrickSize : packoffset(c245.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c246);
    float View_View_IndirectLightingCacheShowFlag : packoffset(c246.w);
    float View_View_bSubsurfacePostprocessEnabled : packoffset(c257.w);
};

cbuffer Primitive
{
    uint Primitive_Primitive_Flags : packoffset(c0);
    float Primitive_Primitive_ObjectBoundsX : packoffset(c22.w);
    float4 Primitive_Primitive_ObjectWorldPositionHighAndRadius : packoffset(c23);
    float3 Primitive_Primitive_ObjectWorldPositionLow : packoffset(c24);
    float Primitive_Primitive_ObjectBoundsY : packoffset(c31.w);
    float Primitive_Primitive_ObjectBoundsZ : packoffset(c32.w);
    float Primitive_Primitive_MaxWPOExtent : packoffset(c37.z);
};

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[7] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_LandscapeWeightmapSampler;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture0;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture1;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture2;
SamplerState IndirectLightingCache_IndirectLightingCacheTextureSampler0;
Texture2D<float4> LandscapeParameters_NormalmapTexture;
SamplerState LandscapeParameters_NormalmapTextureSampler;
Texture2D<float4> Material_Texture2D_0;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;
Texture2D<float4> Material_Texture2D_7;
SamplerState Material_Texture2D_7Sampler;
Texture2D<float4> Material_Texture2D_8;
SamplerState Material_Texture2D_8Sampler;
Texture2D<float4> Material_Texture2D_9;
SamplerState Material_Texture2D_9Sampler;
Texture2D<float4> Material_Texture2D_10;
SamplerState Material_Texture2D_10Sampler;
Texture2D<float4> Material_Texture2D_11;
SamplerState Material_Texture2D_11Sampler;
Texture2D<float4> Material_Texture2D_12;
SamplerState Material_Texture2D_12Sampler;

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static float4 in_var_TEXCOORD2;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;
static float4 out_var_SV_Target1;
static float4 out_var_SV_Target2;
static float4 out_var_SV_Target3;
static float4 out_var_SV_Target5;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    float4 in_var_TEXCOORD2 : TEXCOORD2;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    float4 out_var_SV_Target1 : SV_Target1;
    float4 out_var_SV_Target2 : SV_Target2;
    float4 out_var_SV_Target3 : SV_Target3;
    float4 out_var_SV_Target5 : SV_Target5;
};

void frag_main()
{
    float4 _235 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _239 = mad(float2(_235.zw), 2.0f.xx, (-1.0f).xx);
    float _243 = sqrt(max(1.0f - dot(_239, _239), 0.0f));
    float _244 = _239.x;
    float3 _246 = float3(_244, _239.y, _243);
    float3 _249 = normalize(float3(_243, 0.0f, -_244));
    float4 _266 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _270 = _266.xyz / _266.w.xxx;
    float3 _271 = _270 - View_View_RelativePreViewTranslationTO;
    precise float3 _70 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _271);
    precise float3 _73 = _271 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _70);
    float4 _275 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float2 _300 = float2(mad(in_var_TEXCOORD0.x, Material_Material_PreshaderBuffer[4].x, Material_Material_PreshaderBuffer[4].y), mad(in_var_TEXCOORD0.y, Material_Material_PreshaderBuffer[4].z, Material_Material_PreshaderBuffer[4].w));
    float2 _308 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _300, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _317 = dot(_275, Material_Material_PreshaderBuffer[0]).xxx;
    float2 _323 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _300, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _332 = dot(_275, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _340 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _300, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _349 = dot(_275, Material_Material_PreshaderBuffer[2]).xxx;
    float3 _356 = dot(_275, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _368 = normalize(mul(normalize(((mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _300, View_View_MaterialTextureMipBias).xyz, _356, mad(float4(_340, sqrt(clamp(1.0f - dot(_340, _340), 0.0f, 1.0f)), 1.0f).xyz, _349, mad(float4(_308, sqrt(clamp(1.0f - dot(_308, _308), 0.0f, 1.0f)), 1.0f).xyz, _317, float4(_323, sqrt(clamp(1.0f - dot(_323, _323), 0.0f, 1.0f)), 1.0f).xyz * _332))) * Material_Material_PreshaderBuffer[5].x.xxx) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_249, cross(_246, _249), _246), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _369 = _368 * 1.0f;
    float4 _380 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _385 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _392 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _398 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _404 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _409 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _416 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _422 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _300, View_View_MaterialTextureMipBias);
    float3 _424 = mad(_422.xyz, _356, mad(_416.xyz, _349, mad(_404.xyz, _317, _409.xyz * _332)));
    float3 _428 = clamp(mad(_398.xyz, _356, mad(_392.xyz, _349, mad(_380.xyz, _317, _385.xyz * _332))), 0.0f.xxx, 1.0f.xxx);
    float _429 = clamp(_424.z, 0.0f, 1.0f);
    float _433 = mad(clamp(_424.y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _434 = clamp(_424.x, 0.0f, 1.0f);
    float _478 = 0.0f;
    float _479 = 0.0f;
    float _480 = 0.0f;
    float3 _481 = 0.0f.xxx;
    float3 _482 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _449 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _453 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _449, 0.0f);
        float4 _456 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _449, 0.0f);
        float4 _459 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _449, 0.0f);
        float _469 = _459.w;
        _478 = mad(_433, _469, _459.z);
        _479 = mad(0.5f, _469, _459.y);
        _480 = mad(_429, _469, _459.x);
        _481 = (_428 * _453.w) + _453.xyz;
        _482 = normalize((_369 * _456.w) + ((_456.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _478 = _433;
        _479 = 0.5f;
        _480 = _429;
        _481 = _428;
        _482 = _369;
    }
    bool _495 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _501 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _495)
    {
        _501 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _501 = 1.0f;
    }
    float _548 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _516 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _271, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _527 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_516.x), int(_516.y), int(_516.z), 0).xyz, 0)));
        _548 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_527.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_516 / _527.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _548 = _501;
    }
    float3 _561 = ((_481 - (_481 * _480)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _568 = (lerp((0.07999999821186065673828125f * _479).xxx, _481, _480.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _571 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _576 = 0.0f.xxx;
    if (_571)
    {
        _576 = _561 + (_568 * 0.449999988079071044921875f);
    }
    else
    {
        _576 = _561;
    }
    bool3 _577 = _571.xxx;
    float3 _578 = float3(_577.x ? 0.0f.xxx.x : _568.x, _577.y ? 0.0f.xxx.y : _568.y, _577.z ? 0.0f.xxx.z : _568.z);
    float3 _580 = dot(_578, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _587 = _434.xxx;
    float3 _656 = 0.0f.xxx;
    if (_495)
    {
        float3 _608 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _271, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _612 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _608);
        float4 _616 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _608);
        float4 _619 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _608);
        float4 _637 = 0.0f.xxxx;
        _637.y = (-0.48860299587249755859375f) * _482.y;
        _637.z = 0.48860299587249755859375f * _482.z;
        _637.w = (-0.48860299587249755859375f) * _482.x;
        _637.x = 0.886227548122406005859375f;
        float3 _646 = _637.yzw * 2.094395160675048828125f;
        float4 _647 = float4(_637.x, _646.x, _646.y, _646.z);
        float3 _649 = 0.0f.xxx;
        _649.x = dot(float4(_612.x, _616.x, _619.x, _612.w), _647);
        _649.y = dot(float4(_612.y, _616.y, _619.y, _616.w), _647);
        _649.z = dot(float4(_612.z, _616.z, _619.zw), _647);
        _656 = max(0.0f.xxx, _649) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _656 = 0.0f.xxx;
    }
    float3 _659 = _656 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _680 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _738 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _74 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _75 = _74 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _76 = _75 - _74;
        precise float3 _77 = Primitive_Primitive_ObjectWorldPositionLow - _76;
        precise float3 _78 = _70 - _75;
        precise float3 _79 = _73 - _77;
        precise float3 _80 = _78 + _79;
        float3 _700 = abs(_80);
        float3 _701 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _737 = 0.0f.xxx;
        if (any(bool3(_700.x > _701.x, _700.y > _701.y, _700.z > _701.z)))
        {
            float3 _733 = frac(dot(frac(frac(_70 * 1.52587890625e-05f.xxx) + frac(_73 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _737 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_733.x > 0.5f.xxx.x, _733.y > 0.5f.xxx.y, _733.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _723 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _711 = abs(_270 - in_var_TEXCOORD9);
                _723 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_711.x, max(_711.y, _711.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _723 = _680;
            }
            _737 = _723;
        }
        _738 = _737;
    }
    else
    {
        _738 = _680;
    }
    float4 _745 = float4((mad(_659 * _576, max(_587, ((((((_481 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _434) + ((_481 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _434) + ((_481 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _434), lerp(0.0f.xxx, _576 + (_578 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _738) * 1.0f, 0.0f);
    float4 _756 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _755 = _745;
        _755.w = 0.0f;
        _756 = _755;
    }
    else
    {
        _756 = _745;
    }
    float2 _761 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _776 = (_482 * 0.5f) + 0.5f.xxx;
    float4 _778 = 0.0f.xxxx;
    _778.x = _776.x;
    _778.y = _776.y;
    _778.z = _776.z;
    _778.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _785 = 0.0f.xxxx;
    _785.x = _481.x;
    _785.y = _481.y;
    _785.z = _481.z;
    _785.w = mad(frac(dot(_761.xyx * _761.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_659, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(_587, ((((((_580 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _434) + ((_580 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _434) + ((_580 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _434).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _791 = 0.0f.xxxx;
    _791.x = _548;
    _791.y = 1.0f;
    _791.z = 1.0f;
    _791.w = 1.0f;
    float4 _796 = _756 * View_View_PreExposure;
    float3 _798 = min(_796.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_798.x, _798.y, _798.z, _796.w);
    out_var_SV_Target1 = _778;
    out_var_SV_Target2 = float4(_480, _479, _478, 0.50588238239288330078125f);
    out_var_SV_Target3 = _785;
    out_var_SV_Target5 = _791;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    stage_output.out_var_SV_Target1 = out_var_SV_Target1;
    stage_output.out_var_SV_Target2 = out_var_SV_Target2;
    stage_output.out_var_SV_Target3 = out_var_SV_Target3;
    stage_output.out_var_SV_Target5 = out_var_SV_Target5;
    return stage_output;
}
