#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _207 = 0.0f.xxxx;

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

StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
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
static uint in_var_PRIMITIVE_ID;
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
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
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
    float4 _242 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _246 = mad(float2(_242.zw), 2.0f.xx, (-1.0f).xx);
    float _250 = sqrt(max(1.0f - dot(_246, _246), 0.0f));
    float _251 = _246.x;
    float3 _253 = float3(_251, _246.y, _250);
    float3 _256 = normalize(float3(_250, 0.0f, -_251));
    float4 _273 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _277 = _273.xyz / _273.w.xxx;
    float3 _278 = _277 - View_View_RelativePreViewTranslationTO;
    precise float3 _72 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _278);
    precise float3 _75 = _278 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _72);
    float4 _282 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float2 _307 = float2(mad(in_var_TEXCOORD0.x, Material_Material_PreshaderBuffer[4].x, Material_Material_PreshaderBuffer[4].y), mad(in_var_TEXCOORD0.y, Material_Material_PreshaderBuffer[4].z, Material_Material_PreshaderBuffer[4].w));
    float2 _315 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _307, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _324 = dot(_282, Material_Material_PreshaderBuffer[0]).xxx;
    float2 _330 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _307, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _339 = dot(_282, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _347 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _307, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _356 = dot(_282, Material_Material_PreshaderBuffer[2]).xxx;
    float3 _363 = dot(_282, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _375 = normalize(mul(normalize(((mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _307, View_View_MaterialTextureMipBias).xyz, _363, mad(float4(_347, sqrt(clamp(1.0f - dot(_347, _347), 0.0f, 1.0f)), 1.0f).xyz, _356, mad(float4(_315, sqrt(clamp(1.0f - dot(_315, _315), 0.0f, 1.0f)), 1.0f).xyz, _324, float4(_330, sqrt(clamp(1.0f - dot(_330, _330), 0.0f, 1.0f)), 1.0f).xyz * _339))) * Material_Material_PreshaderBuffer[5].x.xxx) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_256, cross(_253, _256), _253), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _376 = _375 * 1.0f;
    float4 _387 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _307, View_View_MaterialTextureMipBias);
    float4 _392 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _307, View_View_MaterialTextureMipBias);
    float4 _399 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _307, View_View_MaterialTextureMipBias);
    float4 _405 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _307, View_View_MaterialTextureMipBias);
    float4 _411 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _307, View_View_MaterialTextureMipBias);
    float4 _416 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _307, View_View_MaterialTextureMipBias);
    float4 _423 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _307, View_View_MaterialTextureMipBias);
    float4 _429 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _307, View_View_MaterialTextureMipBias);
    float3 _431 = mad(_429.xyz, _363, mad(_423.xyz, _356, mad(_411.xyz, _324, _416.xyz * _339)));
    float3 _435 = clamp(mad(_405.xyz, _363, mad(_399.xyz, _356, mad(_387.xyz, _324, _392.xyz * _339))), 0.0f.xxx, 1.0f.xxx);
    float _436 = clamp(_431.z, 0.0f, 1.0f);
    float _440 = mad(clamp(_431.y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _441 = clamp(_431.x, 0.0f, 1.0f);
    uint _442 = in_var_PRIMITIVE_ID * 42u;
    float _488 = 0.0f;
    float _489 = 0.0f;
    float _490 = 0.0f;
    float3 _491 = 0.0f.xxx;
    float3 _492 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_442].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _459 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _463 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _459, 0.0f);
        float4 _466 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _459, 0.0f);
        float4 _469 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _459, 0.0f);
        float _479 = _469.w;
        _488 = mad(_440, _479, _469.z);
        _489 = mad(0.5f, _479, _469.y);
        _490 = mad(_436, _479, _469.x);
        _491 = (_435 * _463.w) + _463.xyz;
        _492 = normalize((_376 * _466.w) + ((_466.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _488 = _440;
        _489 = 0.5f;
        _490 = _436;
        _491 = _435;
        _492 = _376;
    }
    uint _495 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_442].x);
    bool _511 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _517 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_442].x) & 2u) != 0u) && _511)
    {
        _517 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _517 = 1.0f;
    }
    float _567 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_442].x) & 4u) != 0u)
    {
        float3 _535 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _278, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _546 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_535.x), int(_535.y), int(_535.z), 0).xyz, 0)));
        _567 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_546.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_535 / _546.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _567 = _517;
    }
    float3 _580 = ((_491 - (_491 * _490)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _587 = (lerp((0.07999999821186065673828125f * _489).xxx, _491, _490.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _590 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _595 = 0.0f.xxx;
    if (_590)
    {
        _595 = _580 + (_587 * 0.449999988079071044921875f);
    }
    else
    {
        _595 = _580;
    }
    bool3 _596 = _590.xxx;
    float3 _597 = float3(_596.x ? 0.0f.xxx.x : _587.x, _596.y ? 0.0f.xxx.y : _587.y, _596.z ? 0.0f.xxx.z : _587.z);
    float3 _599 = dot(_597, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _606 = _441.xxx;
    float3 _675 = 0.0f.xxx;
    if (_511)
    {
        float3 _627 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _278, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _631 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _627);
        float4 _635 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _627);
        float4 _638 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _627);
        float4 _656 = 0.0f.xxxx;
        _656.y = (-0.48860299587249755859375f) * _492.y;
        _656.z = 0.48860299587249755859375f * _492.z;
        _656.w = (-0.48860299587249755859375f) * _492.x;
        _656.x = 0.886227548122406005859375f;
        float3 _665 = _656.yzw * 2.094395160675048828125f;
        float4 _666 = float4(_656.x, _665.x, _665.y, _665.z);
        float3 _668 = 0.0f.xxx;
        _668.x = dot(float4(_631.x, _635.x, _638.x, _631.w), _666);
        _668.y = dot(float4(_631.y, _635.y, _638.y, _635.w), _666);
        _668.z = dot(float4(_631.z, _635.z, _638.zw), _666);
        _675 = max(0.0f.xxx, _668) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _675 = 0.0f.xxx;
    }
    float3 _678 = _675 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _699 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _768 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _76 = Scene_GPUScene_GPUScenePrimitiveSceneData[_442 + 18u].xyz * 2097152.0f;
        precise float3 _77 = _76 + Scene_GPUScene_GPUScenePrimitiveSceneData[_442 + 19u].xyz;
        precise float3 _78 = _77 - _76;
        precise float3 _79 = Scene_GPUScene_GPUScenePrimitiveSceneData[_442 + 19u].xyz - _78;
        uint _725 = _442 + 32u;
        precise float3 _80 = _72 - _77;
        precise float3 _81 = _75 - _79;
        precise float3 _82 = _80 + _81;
        float3 _730 = abs(_82);
        float3 _731 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_442 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_442 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_442 + 27u].w) + 1.0f.xxx;
        float3 _767 = 0.0f.xxx;
        if (any(bool3(_730.x > _731.x, _730.y > _731.y, _730.z > _731.z)))
        {
            float3 _763 = frac(dot(frac(frac(_72 * 1.52587890625e-05f.xxx) + frac(_75 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _767 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_763.x > 0.5f.xxx.x, _763.y > 0.5f.xxx.y, _763.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _753 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_725].x > 0.0f)
            {
                float3 _741 = abs(_277 - in_var_TEXCOORD9);
                _753 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_741.x, max(_741.y, _741.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_725].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _753 = _699;
            }
            _767 = _753;
        }
        _768 = _767;
    }
    else
    {
        _768 = _699;
    }
    float4 _775 = float4((mad(_678 * _595, max(_606, ((((((_491 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _441) + ((_491 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _441) + ((_491 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _441), lerp(0.0f.xxx, _595 + (_597 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _768) * 1.0f, 0.0f);
    float4 _786 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _785 = _775;
        _785.w = 0.0f;
        _786 = _785;
    }
    else
    {
        _786 = _775;
    }
    float2 _791 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _806 = (_492 * 0.5f) + 0.5f.xxx;
    float4 _808 = 0.0f.xxxx;
    _808.x = _806.x;
    _808.y = _806.y;
    _808.z = _806.z;
    _808.w = mad(2.0f, float((_495 & 256u) != 0u), float((_495 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _815 = 0.0f.xxxx;
    _815.x = _491.x;
    _815.y = _491.y;
    _815.z = _491.z;
    _815.w = mad(frac(dot(_791.xyx * _791.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_678, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(_606, ((((((_599 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _441) + ((_599 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _441) + ((_599 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _441).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _821 = 0.0f.xxxx;
    _821.x = _567;
    _821.y = 1.0f;
    _821.z = 1.0f;
    _821.w = 1.0f;
    float4 _826 = _786 * View_View_PreExposure;
    float3 _828 = min(_826.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_828.x, _828.y, _828.z, _826.w);
    out_var_SV_Target1 = _808;
    out_var_SV_Target2 = float4(_490, _489, _488, 0.50588238239288330078125f);
    out_var_SV_Target3 = _815;
    out_var_SV_Target5 = _821;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
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
