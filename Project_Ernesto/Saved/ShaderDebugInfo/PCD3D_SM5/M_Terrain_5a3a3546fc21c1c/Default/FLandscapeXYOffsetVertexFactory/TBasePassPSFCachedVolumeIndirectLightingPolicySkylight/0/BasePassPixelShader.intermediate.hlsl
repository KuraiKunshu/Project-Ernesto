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
    float2 _373 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _317, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _382 = dot(_292, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _394 = normalize(mul(normalize(((mad(float4(_373, sqrt(clamp(1.0f - dot(_373, _373), 0.0f, 1.0f)), 1.0f).xyz, _382, mad(float4(_357, sqrt(clamp(1.0f - dot(_357, _357), 0.0f, 1.0f)), 1.0f).xyz, _366, mad(float4(_325, sqrt(clamp(1.0f - dot(_325, _325), 0.0f, 1.0f)), 1.0f).xyz, _334, float4(_340, sqrt(clamp(1.0f - dot(_340, _340), 0.0f, 1.0f)), 1.0f).xyz * _349))) * Material_Material_PreshaderBuffer[5].x.xxx) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_266, cross(_263, _266), _263), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _395 = _394 * 1.0f;
    float4 _406 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _411 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _418 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _424 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _430 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _435 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _442 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _317, View_View_MaterialTextureMipBias);
    float4 _448 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _317, View_View_MaterialTextureMipBias);
    float3 _450 = mad(_448.xyz, _382, mad(_442.xyz, _366, mad(_430.xyz, _334, _435.xyz * _349)));
    float3 _454 = clamp(mad(_424.xyz, _382, mad(_418.xyz, _366, mad(_406.xyz, _334, _411.xyz * _349))), 0.0f.xxx, 1.0f.xxx);
    float _455 = clamp(_450.z, 0.0f, 1.0f);
    float _459 = mad(clamp(_450.y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _460 = clamp(_450.x, 0.0f, 1.0f);
    uint _461 = in_var_PRIMITIVE_ID * 42u;
    float _507 = 0.0f;
    float _508 = 0.0f;
    float _509 = 0.0f;
    float3 _510 = 0.0f.xxx;
    float3 _511 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_461].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _478 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _482 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _478, 0.0f);
        float4 _485 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _478, 0.0f);
        float4 _488 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _478, 0.0f);
        float _498 = _488.w;
        _507 = mad(_459, _498, _488.z);
        _508 = mad(0.5f, _498, _488.y);
        _509 = mad(_455, _498, _488.x);
        _510 = (_454 * _482.w) + _482.xyz;
        _511 = normalize((_395 * _485.w) + ((_485.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _507 = _459;
        _508 = 0.5f;
        _509 = _455;
        _510 = _454;
        _511 = _395;
    }
    uint _514 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_461].x);
    bool _530 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _536 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_461].x) & 2u) != 0u) && _530)
    {
        _536 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _536 = 1.0f;
    }
    float _586 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_461].x) & 4u) != 0u)
    {
        float3 _554 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _288, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _565 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_554.x), int(_554.y), int(_554.z), 0).xyz, 0)));
        _586 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_565.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_554 / _565.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _586 = _536;
    }
    float3 _599 = ((_510 - (_510 * _509)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _606 = (lerp((0.07999999821186065673828125f * _508).xxx, _510, _509.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _609 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _614 = 0.0f.xxx;
    if (_609)
    {
        _614 = _599 + (_606 * 0.449999988079071044921875f);
    }
    else
    {
        _614 = _599;
    }
    bool3 _615 = _609.xxx;
    float3 _616 = float3(_615.x ? 0.0f.xxx.x : _606.x, _615.y ? 0.0f.xxx.y : _606.y, _615.z ? 0.0f.xxx.z : _606.z);
    float3 _618 = dot(_616, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _625 = _460.xxx;
    float3 _694 = 0.0f.xxx;
    if (_530)
    {
        float3 _646 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _288, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _650 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _646);
        float4 _654 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _646);
        float4 _657 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _646);
        float4 _675 = 0.0f.xxxx;
        _675.y = (-0.48860299587249755859375f) * _511.y;
        _675.z = 0.48860299587249755859375f * _511.z;
        _675.w = (-0.48860299587249755859375f) * _511.x;
        _675.x = 0.886227548122406005859375f;
        float3 _684 = _675.yzw * 2.094395160675048828125f;
        float4 _685 = float4(_675.x, _684.x, _684.y, _684.z);
        float3 _687 = 0.0f.xxx;
        _687.x = dot(float4(_650.x, _654.x, _657.x, _650.w), _685);
        _687.y = dot(float4(_650.y, _654.y, _657.y, _654.w), _685);
        _687.z = dot(float4(_650.z, _654.z, _657.zw), _685);
        _694 = max(0.0f.xxx, _687) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _694 = 0.0f.xxx;
    }
    float3 _772 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _724 = 0.0f;
        float _725 = 0.0f;
        float3 _726 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _714 = 0.0f.xxx;
            float _715 = 0.0f;
            if (_530)
            {
                _714 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _715 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _714 = _511;
                _715 = 1.0f;
            }
            float _718 = mad(_715 - 1.0f, 1.0f - _715, 1.0f);
            _724 = lerp(clamp(dot(_714, _511), 0.0f, 1.0f), 1.0f, _718);
            _725 = _715;
            _726 = lerp(_714, _511, _718.xxx);
        }
        else
        {
            _724 = 1.0f;
            _725 = 1.0f;
            _726 = _511;
        }
        float4 _730 = float4(_726, 1.0f);
        float3 _734 = 0.0f.xxx;
        _734.x = dot(View_SkyIrradianceEnvironmentMap[0u], _730);
        _734.y = dot(View_SkyIrradianceEnvironmentMap[1u], _730);
        _734.z = dot(View_SkyIrradianceEnvironmentMap[2u], _730);
        float4 _745 = _730.xyzz * _730.yzzx;
        float3 _749 = 0.0f.xxx;
        _749.x = dot(View_SkyIrradianceEnvironmentMap[3u], _745);
        _749.y = dot(View_SkyIrradianceEnvironmentMap[4u], _745);
        _749.z = dot(View_SkyIrradianceEnvironmentMap[5u], _745);
        _772 = (max(0.0f.xxx, (_734 + _749) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_726.x, _726.x, -(_726.y * _726.y)))) * View_View_SkyLightColor.xyz) * (_725 * _724);
    }
    else
    {
        _772 = 0.0f.xxx;
    }
    float3 _773 = mad(_694, View_View_PrecomputedIndirectLightingColorScale, _772);
    float3 _794 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _863 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _79 = Scene_GPUScene_GPUScenePrimitiveSceneData[_461 + 18u].xyz * 2097152.0f;
        precise float3 _80 = _79 + Scene_GPUScene_GPUScenePrimitiveSceneData[_461 + 19u].xyz;
        precise float3 _81 = _80 - _79;
        precise float3 _82 = Scene_GPUScene_GPUScenePrimitiveSceneData[_461 + 19u].xyz - _81;
        uint _820 = _461 + 32u;
        precise float3 _83 = _75 - _80;
        precise float3 _84 = _78 - _82;
        precise float3 _85 = _83 + _84;
        float3 _825 = abs(_85);
        float3 _826 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_461 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_461 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_461 + 27u].w) + 1.0f.xxx;
        float3 _862 = 0.0f.xxx;
        if (any(bool3(_825.x > _826.x, _825.y > _826.y, _825.z > _826.z)))
        {
            float3 _858 = frac(dot(frac(frac(_75 * 1.52587890625e-05f.xxx) + frac(_78 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _862 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_858.x > 0.5f.xxx.x, _858.y > 0.5f.xxx.y, _858.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _848 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_820].x > 0.0f)
            {
                float3 _836 = abs(_287 - in_var_TEXCOORD9);
                _848 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_836.x, max(_836.y, _836.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_820].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _848 = _794;
            }
            _862 = _848;
        }
        _863 = _862;
    }
    else
    {
        _863 = _794;
    }
    float4 _870 = float4((mad(_773 * _614, max(_625, ((((((_510 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _460) + ((_510 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _460) + ((_510 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _460), lerp(0.0f.xxx, _614 + (_616 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _863) * 1.0f, 0.0f);
    float4 _881 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _880 = _870;
        _880.w = 0.0f;
        _881 = _880;
    }
    else
    {
        _881 = _870;
    }
    float2 _886 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _901 = (_511 * 0.5f) + 0.5f.xxx;
    float4 _903 = 0.0f.xxxx;
    _903.x = _901.x;
    _903.y = _901.y;
    _903.z = _901.z;
    _903.w = mad(2.0f, float((_514 & 256u) != 0u), float((_514 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _910 = 0.0f.xxxx;
    _910.x = _510.x;
    _910.y = _510.y;
    _910.z = _510.z;
    _910.w = mad(frac(dot(_886.xyx * _886.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_773, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(_625, ((((((_618 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _460) + ((_618 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _460) + ((_618 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _460).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _916 = 0.0f.xxxx;
    _916.x = _586;
    _916.y = 1.0f;
    _916.z = 1.0f;
    _916.w = 1.0f;
    float4 _921 = _881 * View_View_PreExposure;
    float3 _923 = min(_921.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_923.x, _923.y, _923.z, _921.w);
    out_var_SV_Target1 = _903;
    out_var_SV_Target2 = float4(_509, _508, _507, 0.50588238239288330078125f);
    out_var_SV_Target3 = _910;
    out_var_SV_Target5 = _916;
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
