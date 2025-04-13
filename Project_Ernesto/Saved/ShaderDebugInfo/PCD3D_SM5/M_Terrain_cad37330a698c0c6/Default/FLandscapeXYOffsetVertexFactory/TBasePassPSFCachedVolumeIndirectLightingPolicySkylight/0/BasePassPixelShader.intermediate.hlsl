#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _212 = 0.0f.xxx;
static float4 _215 = 0.0f.xxxx;

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
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c193.y);
    float4 View_View_SkyLightColor : packoffset(c194);
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

StructuredBuffer<float4> View_SkyIrradianceEnvironmentMap;
StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c151);
};

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
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
    float4 _252 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _256 = mad(float2(_252.zw), 2.0f.xx, (-1.0f).xx);
    float _260 = sqrt(max(1.0f - dot(_256, _256), 0.0f));
    float _261 = _256.x;
    float3 _263 = float3(_261, _256.y, _260);
    float3 _266 = normalize(float3(_260, 0.0f, -_261));
    float4 _283 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _287 = _283.xyz / _283.w.xxx;
    float3 _288 = _287 - View_View_RelativePreViewTranslationTO;
    precise float3 _75 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _288);
    precise float3 _78 = _288 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _75);
    float4 _292 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float2 _317 = float2(mad(in_var_TEXCOORD0.x, Material_Material_PreshaderBuffer[4].x, Material_Material_PreshaderBuffer[4].y), mad(in_var_TEXCOORD0.y, Material_Material_PreshaderBuffer[4].z, Material_Material_PreshaderBuffer[4].w));
    float2 _325 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _317, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _334 = dot(_292, Material_Material_PreshaderBuffer[0]).xxx;
    float2 _340 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _317, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _349 = dot(_292, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _357 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _317, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _366 = dot(_292, Material_Material_PreshaderBuffer[2]).xxx;
    float3 _373 = dot(_292, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _385 = normalize(mul(normalize(((mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _317, View_View_MaterialTextureMipBias).xyz, _373, mad(float4(_357, sqrt(clamp(1.0f - dot(_357, _357), 0.0f, 1.0f)), 1.0f).xyz, _366, mad(float4(_325, sqrt(clamp(1.0f - dot(_325, _325), 0.0f, 1.0f)), 1.0f).xyz, _334, float4(_340, sqrt(clamp(1.0f - dot(_340, _340), 0.0f, 1.0f)), 1.0f).xyz * _349))) * Material_Material_PreshaderBuffer[5].x.xxx) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_266, cross(_263, _266), _263), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _386 = _385 * 1.0f;
    float4 _397 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _402 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _409 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _415 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _421 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _426 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _433 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _439 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _317, View_View_MaterialTextureMipBias);
    float3 _441 = mad(_439.xyz, _373, mad(_433.xyz, _366, mad(_421.xyz, _334, _426.xyz * _349)));
    float3 _445 = clamp(mad(_415.xyz, _373, mad(_409.xyz, _366, mad(_397.xyz, _334, _402.xyz * _349))), 0.0f.xxx, 1.0f.xxx);
    float _446 = clamp(_441.z, 0.0f, 1.0f);
    float _450 = mad(clamp(_441.y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _451 = clamp(_441.x, 0.0f, 1.0f);
    uint _452 = in_var_PRIMITIVE_ID * 42u;
    float _498 = 0.0f;
    float _499 = 0.0f;
    float _500 = 0.0f;
    float3 _501 = 0.0f.xxx;
    float3 _502 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_452].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _469 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _473 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _469, 0.0f);
        float4 _476 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _469, 0.0f);
        float4 _479 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _469, 0.0f);
        float _489 = _479.w;
        _498 = mad(_450, _489, _479.z);
        _499 = mad(0.5f, _489, _479.y);
        _500 = mad(_446, _489, _479.x);
        _501 = (_445 * _473.w) + _473.xyz;
        _502 = normalize((_386 * _476.w) + ((_476.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _498 = _450;
        _499 = 0.5f;
        _500 = _446;
        _501 = _445;
        _502 = _386;
    }
    uint _505 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_452].x);
    bool _521 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _527 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_452].x) & 2u) != 0u) && _521)
    {
        _527 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _527 = 1.0f;
    }
    float _577 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_452].x) & 4u) != 0u)
    {
        float3 _545 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _288, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _556 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_545.x), int(_545.y), int(_545.z), 0).xyz, 0)));
        _577 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_556.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_545 / _556.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _577 = _527;
    }
    float3 _590 = ((_501 - (_501 * _500)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _597 = (lerp((0.07999999821186065673828125f * _499).xxx, _501, _500.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _600 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _605 = 0.0f.xxx;
    if (_600)
    {
        _605 = _590 + (_597 * 0.449999988079071044921875f);
    }
    else
    {
        _605 = _590;
    }
    bool3 _606 = _600.xxx;
    float3 _607 = float3(_606.x ? 0.0f.xxx.x : _597.x, _606.y ? 0.0f.xxx.y : _597.y, _606.z ? 0.0f.xxx.z : _597.z);
    float3 _609 = dot(_607, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _616 = _451.xxx;
    float3 _685 = 0.0f.xxx;
    if (_521)
    {
        float3 _637 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _288, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _641 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _637);
        float4 _645 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _637);
        float4 _648 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _637);
        float4 _666 = 0.0f.xxxx;
        _666.y = (-0.48860299587249755859375f) * _502.y;
        _666.z = 0.48860299587249755859375f * _502.z;
        _666.w = (-0.48860299587249755859375f) * _502.x;
        _666.x = 0.886227548122406005859375f;
        float3 _675 = _666.yzw * 2.094395160675048828125f;
        float4 _676 = float4(_666.x, _675.x, _675.y, _675.z);
        float3 _678 = 0.0f.xxx;
        _678.x = dot(float4(_641.x, _645.x, _648.x, _641.w), _676);
        _678.y = dot(float4(_641.y, _645.y, _648.y, _645.w), _676);
        _678.z = dot(float4(_641.z, _645.z, _648.zw), _676);
        _685 = max(0.0f.xxx, _678) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _685 = 0.0f.xxx;
    }
    float3 _763 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _715 = 0.0f;
        float _716 = 0.0f;
        float3 _717 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _705 = 0.0f.xxx;
            float _706 = 0.0f;
            if (_521)
            {
                _705 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _706 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _705 = _502;
                _706 = 1.0f;
            }
            float _709 = mad(_706 - 1.0f, 1.0f - _706, 1.0f);
            _715 = lerp(clamp(dot(_705, _502), 0.0f, 1.0f), 1.0f, _709);
            _716 = _706;
            _717 = lerp(_705, _502, _709.xxx);
        }
        else
        {
            _715 = 1.0f;
            _716 = 1.0f;
            _717 = _502;
        }
        float4 _721 = float4(_717, 1.0f);
        float3 _725 = 0.0f.xxx;
        _725.x = dot(View_SkyIrradianceEnvironmentMap[0u], _721);
        _725.y = dot(View_SkyIrradianceEnvironmentMap[1u], _721);
        _725.z = dot(View_SkyIrradianceEnvironmentMap[2u], _721);
        float4 _736 = _721.xyzz * _721.yzzx;
        float3 _740 = 0.0f.xxx;
        _740.x = dot(View_SkyIrradianceEnvironmentMap[3u], _736);
        _740.y = dot(View_SkyIrradianceEnvironmentMap[4u], _736);
        _740.z = dot(View_SkyIrradianceEnvironmentMap[5u], _736);
        _763 = (max(0.0f.xxx, (_725 + _740) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_717.x, _717.x, -(_717.y * _717.y)))) * View_View_SkyLightColor.xyz) * (_716 * _715);
    }
    else
    {
        _763 = 0.0f.xxx;
    }
    float3 _764 = mad(_685, View_View_PrecomputedIndirectLightingColorScale, _763);
    float3 _785 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _854 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _79 = Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 18u].xyz * 2097152.0f;
        precise float3 _80 = _79 + Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 19u].xyz;
        precise float3 _81 = _80 - _79;
        precise float3 _82 = Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 19u].xyz - _81;
        uint _811 = _452 + 32u;
        precise float3 _83 = _75 - _80;
        precise float3 _84 = _78 - _82;
        precise float3 _85 = _83 + _84;
        float3 _816 = abs(_85);
        float3 _817 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 27u].w) + 1.0f.xxx;
        float3 _853 = 0.0f.xxx;
        if (any(bool3(_816.x > _817.x, _816.y > _817.y, _816.z > _817.z)))
        {
            float3 _849 = frac(dot(frac(frac(_75 * 1.52587890625e-05f.xxx) + frac(_78 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _853 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_849.x > 0.5f.xxx.x, _849.y > 0.5f.xxx.y, _849.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _839 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_811].x > 0.0f)
            {
                float3 _827 = abs(_287 - in_var_TEXCOORD9);
                _839 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_827.x, max(_827.y, _827.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_811].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _839 = _785;
            }
            _853 = _839;
        }
        _854 = _853;
    }
    else
    {
        _854 = _785;
    }
    float4 _861 = float4((mad(_764 * _605, max(_616, ((((((_501 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _451) + ((_501 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _451) + ((_501 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _451), lerp(0.0f.xxx, _605 + (_607 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _854) * 1.0f, 0.0f);
    float4 _872 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _871 = _861;
        _871.w = 0.0f;
        _872 = _871;
    }
    else
    {
        _872 = _861;
    }
    float2 _877 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _892 = (_502 * 0.5f) + 0.5f.xxx;
    float4 _894 = 0.0f.xxxx;
    _894.x = _892.x;
    _894.y = _892.y;
    _894.z = _892.z;
    _894.w = mad(2.0f, float((_505 & 256u) != 0u), float((_505 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _901 = 0.0f.xxxx;
    _901.x = _501.x;
    _901.y = _501.y;
    _901.z = _501.z;
    _901.w = mad(frac(dot(_877.xyx * _877.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_764, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(_616, ((((((_609 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _451) + ((_609 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _451) + ((_609 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _451).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _907 = 0.0f.xxxx;
    _907.x = _577;
    _907.y = 1.0f;
    _907.z = 1.0f;
    _907.w = 1.0f;
    float4 _912 = _872 * View_View_PreExposure;
    float3 _914 = min(_912.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_914.x, _914.y, _914.z, _912.w);
    out_var_SV_Target1 = _894;
    out_var_SV_Target2 = float4(_500, _499, _498, 0.50588238239288330078125f);
    out_var_SV_Target3 = _901;
    out_var_SV_Target5 = _907;
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
