/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceNormalMap<true,true,false> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = mixin ComputeColorAdd3ds [{color1 = ComputeColorTextureScaledOffsetDynamicSampler<Material.GlossinessMap,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i2,Material.TextureOffset.i2>}, {color2 = ComputeColorConstantFloatLink<Material.GlossinessValue>}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
@P Lighting.DirectLightGroups: LightClusteredPointGroup<64>, LightClusteredSpotGroup<64>, mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false>, ShadowMapFilterPcf<PerView.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
cbuffer PerMaterial [Size: 96]
@C    scale_id175 => Material.TextureScale
@C    offset_id176 => Material.TextureOffset
@C    scale_id180 => Material.TextureScale.i1
@C    offset_id181 => Material.TextureOffset.i1
@C    scale_id188 => Material.TextureScale.i2
@C    offset_id189 => Material.TextureOffset.i2
@C    constantFloat_id190 => Material.GlossinessValue
@C    constantColor_id198 => Material.SpecularValue
@C    constantFloat_id200 => Material.SpecularIntensityValue
cbuffer PerView [Size: 816]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id77 => Camera.NearClipPlane
@C    FarClipPlane_id78 => Camera.FarClipPlane
@C    ZProjection_id79 => Camera.ZProjection
@C    ViewSize_id80 => Camera.ViewSize
@C    AspectRatio_id81 => Camera.AspectRatio
@C    ClusterDepthScale_id87 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id88 => LightClustered.ClusterDepthBias
@C    LightCount_id94 => DirectLightGroupPerView.LightCount.directLightGroups[2]
@C    Lights_id96 => LightDirectionalGroup.Lights.directLightGroups[2]
@C    ShadowMapTextureSize_id98 => ShadowMap.TextureSize.directLightGroups[2]
@C    ShadowMapTextureTexelSize_id99 => ShadowMap.TextureTexelSize.directLightGroups[2]
@C    WorldToShadowCascadeUV_id160 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[2]
@C    DepthBiases_id161 => ShadowMapReceiverBase.DepthBiases.directLightGroups[2]
@C    OffsetScales_id162 => ShadowMapReceiverBase.OffsetScales.directLightGroups[2]
@C    CascadeDepthSplits_id168 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[2]
@C    Bias_id170 => ShadowMapFilterPcf.Bias.directLightGroups[2]
@C    AmbientLight_id171 => LightSimpleAmbient.AmbientLight.environmentLights[0]
***************************
******  Resources    ******
***************************
@R    Texture_id172 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Texture_id172 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id173 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id173 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Texture_id178 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id178 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id186 => Material.GlossinessMap [Stage: None, Slot: (-1--1)]
@R    Texture_id186 => Material.GlossinessMap [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id132 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    Sampler_id173 => Material.Sampler.i0 [Stage: Pixel, Slot: (1-1)]
@R    Texture_id172 => Material.DiffuseMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id178 => Material.NormalMap [Stage: Pixel, Slot: (1-1)]
@R    Texture_id186 => Material.GlossinessMap [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (7-7)]
@R    PerDraw => PerDraw [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (1-1)]
@R    PerView => PerView [Stage: Pixel, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    ShadingBase => a4b46f7608ab80e77c938f475834f962
@S    ComputeColor => 6e3e8655257003c26480195de33cbbc1
@S    TransformationBase => f1386ed2f0e8db4eb9e79a63ee23e05c
@S    NormalStream => 5d295e278c920e30e310e1979bc14a19
@S    TransformationWAndVP => 1ad0d61ab4ab5bf92b87169f094b8b17
@S    PositionStream4 => 87a2d7a46c028c1479a982866d88d067
@S    PositionHStream4 => f5c4e6d128281ef2d40fba86959205d5
@S    Transformation => 8b044dd67dc836d93d27ce6bee5b1db8
@S    NormalFromNormalMapping => facb7d217f791465ba2cb80b1ad8bc3b
@S    NormalBase => b70fd93cea3e78cb7e35bf33c5bc761d
@S    MaterialSurfacePixelStageCompositor => 1d6419ba7ac2d0f180564d21a0d3f8c0
@S    PositionStream => 664ed5997626578c1dfdc74402cd23f6
@S    MaterialPixelShadingStream => 28de6f1960d9c29f165f916c0adfe5a5
@S    MaterialPixelStream => 17c22a7a37d239e0ee9e8d2779c03c80
@S    MaterialStream => 83fd257dadb68d92b2e57a11122265d4
@S    IStreamInitializer => 8be0404675b438bff2babfd297fb96df
@S    LightStream => 81d82a322111295057787d950e438228
@S    DirectLightGroupArray => 9addcff5b7cb7364a8a5d87d4de45742
@S    DirectLightGroup => 92eb9d726b1937533c27d57ff97f8da5
@S    ShadowGroup => 545ec47456ee7f4472536d8a7316d02f
@S    ShadowStream => 4abbfb30b4b85e71b0f683b420977101
@S    EnvironmentLightArray => 92f59b0813153de143701e01f1da89e0
@S    EnvironmentLight => 461117f7455b162e23645a86e89f749d
@S    IMaterialSurface => 14b3d59b9c516893bd7730aaa3dc225a
@S    LightClusteredPointGroup => 60ed7b620bc6eabb3ad2330302bc367e
@S    LightPoint => 2044aa0ce4ba04060728e554f889fe5c
@S    LightUtil => d77cfcfacea55ef4e06d9f585be27420
@S    LightClustered => e0cc7997bb88b676801a857b727faf2b
@S    Camera => ec417735d81c9ad1d80ca0e6d87138b0
@S    LightClusteredSpotGroup => 7beef740595052a48885ae9f619304ca
@S    LightSpot => 0bcf1b3e89e9a247545b91358ea8a1a5
@S    LightDirectionalGroup => 7bb2cc43889ab80004ab02a83bbd02d2
@S    DirectLightGroupPerView => f728a5a7f613dcd26bc20d54908ca1b8
@S    LightDirectional => 8f8fc60cae27222c84186af6eec74080
@S    ShadowMapReceiverDirectional => 95d60505c10a89c26292fb44b5445492
@S    ShadowMapReceiverBase => b8e884a10ba47c78372ae2ee6b0eada5
@S    ShadowMapGroup => 9fa1018d7f62b9d4719202422d304c06
@S    ShadowMapCommon => f7f2751f116d20510441e8bbc4c1bea6
@S    ShadowMapFilterBase => 4f39c8431637ddf01ca0702bbf3fa5d8
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    ShadowMapFilterPcf => cac13ffd50e214b4ab513eead5113b25
@S    LightSimpleAmbient => 6d68fc78fb5b5ad232c5ec44f6d90e31
@S    MaterialSurfaceArray => ccbac4b49ee1e91b6f7d11a29c26a658
@S    MaterialSurfaceDiffuse => 4572009ce562fa4c388af46aacc800f7
@S    IMaterialSurfacePixel => c2baefbc3fb7ad1466cc087909a23051
@S    ComputeColorTextureScaledOffsetDynamicSampler => 36853d1a7bd080d8e9e9c5137a104b79
@S    DynamicTexture => 74e692ca9cc93b6cc6965bc380e07efe
@S    DynamicSampler => 0e1b689d1f965f3f34ae76abdf34dea7
@S    DynamicTextureStream => 546b0c40a42b4fe0e5613396b0ed4d66
@S    MaterialSurfaceNormalMap => 9d09de7bfdbcadbc973dbfcc57934c02
@S    MaterialSurfaceGlossinessMap => fb8774941dd1a7b0ced77715861382a4
@S    ComputeColorAdd3ds => 0d65d2008f4e34b23415e745fe4a26e5
@S    BlendUtils => 15eb19bd390134e12d394f2ac18f8d02
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceSetStreamFromComputeColor => 1d00f7d823647b307a55871a0b3eba09
@S    IMaterialSurfaceVertex => 8e13e0524d4025cb811c673aeb77f45b
@S    MaterialVertexStream => fe2d4e2abe57231a93785fe59684b199
@S    MaterialDisplacementStream => 5112948b0773a844410cc7c3df78184a
@S    IMaterialSurfaceDomain => a787b7e989be07714532cd1ffc35ef2a
@S    MaterialDomainStream => 8be905888c6f3153139bc1fa900fdf5f
@S    MaterialTessellationStream => 87652904dbe93d91999520c7e41f52a1
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
@S    MaterialSurfaceLightingAndShading => 4faacd53863c0b5c65d23ad20797d27c
@S    Math => 5bdf39e412cac464ebbce340da34bca1
@S    IMaterialSurfaceShading => 7aecb9db43b53094f40d49ae22406a18
@S    MaterialSurfaceShadingDiffuseLambert => 66ea94572ee9f10a2e305608a7d69dad
@S    MaterialSurfaceShadingSpecularMicrofacet => b7d013f1414d67d7f1a4afd4ac068c8e
@S    BRDFMicrofacet => 98c58221f1b61f0766453f0ce60edcb0
@S    IMaterialSpecularMicrofacetFresnelFunction => be6c16bab5a59713001b43d92cde1a5a
@S    IMaterialSpecularMicrofacetVisibilityFunction => 5872403d82d7dcdfdaaf64a9f924b8dd
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => a8ee1e483f2e3d59a955262211e6f903
@S    MaterialSpecularMicrofacetFresnelSchlick => 31c4aa7c7fbef53ee309a102999a200c
@S    MaterialSpecularMicrofacetVisibilitySmithSchlickGGX => f3ca0542110ccc88e4ea25b477d2e6a0
@S    MaterialSpecularMicrofacetNormalDistributionGGX => c1f51806b6ccb80ce3f85c0d2c550f6b
***************************
*****     Stages      *****
***************************
@G    Vertex => f2eeb9bb9f1f69bc13dc865e6c9745f3
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id77;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id78;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id79;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id80;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id81;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id87;      // Offset:  380 Size:     4 [unused]
//   float ClusterDepthBias_id88;       // Offset:  384 Size:     4 [unused]
//   int LightCount_id94;               // Offset:  388 Size:     4 [unused]
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96;                     // Offset:  400 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id98;  // Offset:  432 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id99;// Offset:  440 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id160[4];// Offset:  448 Size:   256 [unused]
//   float DepthBiases_id161;           // Offset:  704 Size:     4 [unused]
//   float OffsetScales_id162;          // Offset:  720 Size:     4 [unused]
//   float CascadeDepthSplits_id168[4]; // Offset:  736 Size:    52 [unused]
//   float Bias_id170;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id171;         // Offset:  800 Size:    12 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PerDraw                           cbuffer      NA          NA    0        1
// PerView                           cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
// TANGENT                  0   xyzw        2     NONE   float   xyzw
// TEXCOORD                 0   xy          3     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMAL                   0    yzw        2     NONE   float    yzw
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
vs_4_0
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xyzw
dcl_input v3.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_output o4.xy
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.meshTangent_id15.x; v2.y <- __input__.meshTangent_id15.y; v2.z <- __input__.meshTangent_id15.z; v2.w <- __input__.meshTangent_id15.w; 
//   v3.x <- __input__.TexCoord_id148.x; v3.y <- __input__.TexCoord_id148.y; 
//   o4.x <- <VSMain return value>.TexCoord_id148.x; o4.y <- <VSMain return value>.TexCoord_id148.y; 
//   o3.x <- <VSMain return value>.meshTangent_id15.x; o3.y <- <VSMain return value>.meshTangent_id15.y; o3.z <- <VSMain return value>.meshTangent_id15.z; o3.w <- <VSMain return value>.meshTangent_id15.w; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.meshNormal_id14.x; o2.z <- <VSMain return value>.meshNormal_id14.y; o2.w <- <VSMain return value>.meshNormal_id14.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 854 "G:\Documents\Xenko Projects\Retrograde\Retrograde\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_abb010e1a2e9c52ebd727d7d00ad29cd.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 935
mov o0.xyzw, r0.xyzw

#line 844
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 935
mov o1.w, r1.x
mov o2.x, r1.x

#line 844
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 935
mov o2.yzw, v1.xxyz
mov o3.xyzw, v2.xyzw
mov o4.xy, v3.xyxx
ret 
// Approximately 15 instruction slots used
@G    Pixel => e539d3fd014463c1bd8bdf350be247f0
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float2 scale_id175;                // Offset:    0 Size:     8
//   float2 offset_id176;               // Offset:    8 Size:     8
//   float2 scale_id180;                // Offset:   16 Size:     8
//   float2 offset_id181;               // Offset:   24 Size:     8
//   float2 scale_id188;                // Offset:   32 Size:     8
//   float2 offset_id189;               // Offset:   40 Size:     8
//   float constantFloat_id190;         // Offset:   48 Size:     4
//   float4 constantColor_id198;        // Offset:   64 Size:    16
//   float constantFloat_id200;         // Offset:   80 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16
//   float NearClipPlane_id77;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id78;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id79;           // Offset:  360 Size:     8
//   float2 ViewSize_id80;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id81;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id87;      // Offset:  380 Size:     4
//   float ClusterDepthBias_id88;       // Offset:  384 Size:     4
//   int LightCount_id94;               // Offset:  388 Size:     4
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96;                     // Offset:  400 Size:    28
//   float2 ShadowMapTextureSize_id98;  // Offset:  432 Size:     8
//   float2 ShadowMapTextureTexelSize_id99;// Offset:  440 Size:     8
//   float4x4 WorldToShadowCascadeUV_id160[4];// Offset:  448 Size:   256
//   float DepthBiases_id161;           // Offset:  704 Size:     4
//   float OffsetScales_id162;          // Offset:  720 Size:     4
//   float CascadeDepthSplits_id168[4]; // Offset:  736 Size:    52
//   float Bias_id170;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id171;         // Offset:  800 Size:    12
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearClampCompareLessEqualSampler_id132  sampler_c      NA          NA    0        1
// Sampler_id173                     sampler      NA          NA    1        1
// Texture_id172                     texture  float4          2d    0        1
// Texture_id178                     texture  float4          2d    1        1
// Texture_id186                     texture  float4          2d    2        1
// LightClusters_id85                texture   uint2          3d    3        1
// LightIndices_id86                 texture    uint         buf    4        1
// PointLights_id90                  texture  float4         buf    5        1
// SpotLights_id93                   texture  float4         buf    6        1
// ShadowMapTexture_id97             texture  float4          2d    7        1
// PerDraw                           cbuffer      NA          NA    0        1
// PerMaterial                       cbuffer      NA          NA    1        1
// PerView                           cbuffer      NA          NA    2        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyz 
// SV_Position              0   xyzw        1      POS   float   xyz 
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMAL                   0    yzw        2     NONE   float    yzw
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer cb0[3], immediateIndexed
dcl_constantbuffer cb1[6], immediateIndexed
dcl_constantbuffer cb2[51], dynamicIndexed
dcl_sampler s0, mode_comparison
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 20
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.meshNormal_id14.x; v2.z <- __input__.meshNormal_id14.y; v2.w <- __input__.meshNormal_id14.z; 
//   v3.x <- __input__.meshTangent_id15.x; v3.y <- __input__.meshTangent_id15.y; v3.z <- __input__.meshTangent_id15.z; v3.w <- __input__.meshTangent_id15.w; 
//   v4.x <- __input__.TexCoord_id148.x; v4.y <- __input__.TexCoord_id148.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 835 "G:\Documents\Xenko Projects\Retrograde\Retrograde\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_abb010e1a2e9c52ebd727d7d00ad29cd.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.meshNormal_id14.x; r0.y <- streams.meshNormal_id14.y; r0.z <- streams.meshNormal_id14.z
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v3.xyzx  // r1.x <- tangent.x; r1.y <- tangent.y; r1.z <- tangent.z
mul r2.xyz, r0.zxyz, r1.yzxy
mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
mul r2.xyz, r2.xyzx, v3.wwww  // r2.x <- bitangent.x; r2.y <- bitangent.y; r2.z <- bitangent.z

#line 871
dp3 r3.x, r1.xyzx, cb0[0].xyzx  // r3.x <- streams.tangentToWorld_id17._m00
dp3 r4.x, r1.xyzx, cb0[1].xyzx  // r4.x <- streams.tangentToWorld_id17._m01
dp3 r1.x, r1.xyzx, cb0[2].xyzx  // r1.x <- streams.tangentToWorld_id17._m02
dp3 r3.y, r2.xyzx, cb0[0].xyzx  // r3.y <- streams.tangentToWorld_id17._m10
dp3 r4.y, r2.xyzx, cb0[1].xyzx  // r4.y <- streams.tangentToWorld_id17._m11
dp3 r1.y, r2.xyzx, cb0[2].xyzx  // r1.y <- streams.tangentToWorld_id17._m12
dp3 r3.z, r0.xyzx, cb0[0].xyzx  // r3.z <- streams.tangentToWorld_id17._m20
dp3 r4.z, r0.xyzx, cb0[1].xyzx  // r4.z <- streams.tangentToWorld_id17._m21
dp3 r1.z, r0.xyzx, cb0[2].xyzx  // r1.z <- streams.tangentToWorld_id17._m22

#line 858
add r0.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- streams.viewWS_id61.x; r0.y <- streams.viewWS_id61.y; r0.z <- streams.viewWS_id61.z

#line 634
mad r2.xy, v4.xyxx, cb1[0].xyxx, cb1[0].zwzz
sample r2.xyzw, r2.xyxx, t0.xyzw, s1  // r2.x <- <Compute_id247 return value>.x; r2.y <- <Compute_id247 return value>.y; r2.z <- <Compute_id247 return value>.z; r2.w <- <Compute_id247 return value>.w

#line 630
mad r5.xy, v4.xyxx, cb1[1].xyxx, cb1[1].zwzz
sample r5.xyzw, r5.xyxx, t1.xyzw, s1  // r5.x <- <Compute_id249 return value>.x; r5.y <- <Compute_id249 return value>.y

#line 753
mad r5.xy, r5.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- normal.x; r5.y <- normal.y

#line 757
dp2 r0.w, r5.xyxx, r5.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r5.z, r0.w  // r5.z <- normal.z

#line 492
mad r6.xy, v4.xyxx, cb1[2].xyxx, cb1[2].zwzz
sample r6.xyzw, r6.xyxx, t2.xyzw, s1  // r6.x <- <Compute_id251 return value>.x

#line 625
add r0.w, r6.x, cb1[3].x  // r0.w <- interColor.x

#line 484
mul r1.w, r6.x, cb1[3].x
add r3.w, -r6.x, l(1.000000)
mul r4.w, cb1[3].x, cb1[3].x
mul r3.w, r3.w, r4.w
mad r0.w, r1.w, r0.w, r3.w
add r1.w, -cb1[3].x, l(1.000000)
mul r3.w, r6.x, r6.x
mad r0.w, r3.w, r1.w, r0.w  // r0.w <- <BasicBlend_id443 return value>.x

#line 611
dp3 r3.y, r5.xyzx, r3.xyzx
dp3 r3.z, r5.xyzx, r4.xyzx
dp3 r3.w, r5.xyzx, r1.xyzx
dp3 r1.x, r3.yzwy, r3.yzwy
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r3.yzwy  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z

#line 593
mul r3.xyz, cb1[4].xyzx, cb1[5].xxxx  // r3.x <- streams.matSpecularVisible_id64.x; r3.y <- streams.matSpecularVisible_id64.y; r3.z <- streams.matSpecularVisible_id64.z
dp3 r1.w, r1.xyzx, r0.xyzx
max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotV_id65
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 476
dp3 r3.w, r5.xyzx, r5.xyzx
sqrt r4.x, r3.w  // r4.x <- r
lt r4.y, r4.x, l(1.000000)
add r4.z, -r3.w, l(1.000000)
mul r4.z, r4.z, l(0.500000)
mul r3.w, r3.w, r4.x
mad r3.w, r4.x, l(3.000000), -r3.w
div r3.w, r4.z, r3.w  // r3.w <- roughnessAdjust
and r3.w, r3.w, r4.y

#line 597
mad r0.w, r0.w, r0.w, r3.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id63

#line 468
add r3.w, v1.z, -cb2[22].z
div r3.w, cb2[22].w, r3.w  // r3.w <- depth
ftoi r4.xy, v1.xyxx  // r4.x <- shadingPosition.x; r4.y <- shadingPosition.y
mad r3.w, r3.w, cb2[23].w, cb2[24].x
log r3.w, r3.w
max r3.w, r3.w, l(0.000000)
ftoi r5.z, r3.w  // r5.z <- slice
ushr r5.xy, r4.xyxx, l(6)
mov r5.w, l(0)
ld r4.xyzw, r5.xyzw, t3.xyzw  // r4.x <- streams.lightData_id83.x; r4.y <- streams.lightData_id83.y

#line 583
and r3.w, r4.y, l(0x0000ffff)  // r3.w <- <GetMaxLightCount_id220 return value>

#line 653
mov r5.xyz, v0.xyzx  // r5.x <- streams.PositionWS_id19.x; r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r6.xyz, r0.xyzx  // r6.x <- streams.viewWS_id61.x; r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.x, r2.x  // r7.x <- streams.matDiffuseVisible_id62.x
mov r8.xy, r2.yzyy  // r8.x <- streams.matDiffuseVisible_id62.y; r8.y <- streams.matDiffuseVisible_id62.z
mov r8.zw, r3.xxxy  // r8.z <- streams.matSpecularVisible_id64.x; r8.w <- streams.matSpecularVisible_id64.y
mov r9.x, r3.z  // r9.x <- streams.matSpecularVisible_id64.z
mov r9.y, r0.w  // r9.y <- streams.alphaRoughness_id63
mov r10.xyz, r1.xyzx  // r10.x <- streams.normalWS_id16.x; r10.y <- streams.normalWS_id16.y; r10.z <- streams.normalWS_id16.z
mov r11.z, r1.w  // r11.z <- streams.NdotV_id65
mov r11.x, r4.x  // r11.x <- streams.lightIndex_id84
mov r12.xyz, l(0,0,0,0)  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r4.z, l(0)  // r4.z <- i
loop 
  ige r4.w, r4.z, r3.w
  breakc_nz r4.w
  if_nz r4.w
    break 
  endif 

#line 455
  ld r13.xyzw, r11.xxxx, t4.xyzw  // r13.x <- realLightIndex
  iadd r11.x, r11.x, l(1)  // r11.x <- streams.lightIndex_id84
  ishl r4.w, r13.x, l(1)
  ld r13.xyzw, r4.wwww, t5.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w
  iadd r4.w, r4.w, l(1)
  ld r14.xyzw, r4.wwww, t5.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 339
  add r13.xyz, -r5.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z
  dp3 r4.w, r13.xyzx, r13.xyzx
  sqrt r5.w, r4.w  // r5.w <- lightVectorLength
  div r13.xyz, r13.xyzx, r5.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 289
  max r5.w, r4.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 221
  mul r4.w, r13.w, r4.w  // r4.w <- factor
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id75 return value>

#line 290
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 345
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.lightColor_id39.x; r14.y <- streams.lightColor_id39.y; r14.z <- streams.lightColor_id39.z

#line 573
  dp3 r4.w, r10.xyzx, r13.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id43
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id40.x; r14.y <- streams.lightColorNdotL_id40.y; r14.z <- streams.lightColorNdotL_id40.z

#line 565
  add r15.xyz, r6.xyzx, r13.xyzx
  dp3 r5.w, r15.xyzx, r15.xyzx
  rsq r5.w, r5.w
  mul r15.xyz, r5.wwww, r15.xyzx  // r15.x <- streams.H_id68.x; r15.y <- streams.H_id68.y; r15.z <- streams.H_id68.z
  dp3 r5.w, r10.xyzx, r15.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotH_id69
  dp3 r6.w, r13.xyzx, r15.xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.LdotH_id70

#line 561
  mov r7.yz, r8.xxyx
  mul r7.yzw, r14.xxyz, r7.xxyz

#line 663
  mad r7.yzw, r7.yyzw, l(0.000000, 0.318310, 0.318310, 0.318310), r12.xxyz  // r7.y <- directLightingContribution.x; r7.z <- directLightingContribution.y; r7.w <- directLightingContribution.z

#line 284
  mov r13.xy, r8.zwzz
  mov r13.z, r9.x
  add r15.xyz, -r13.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r6.w, -r6.w, l(1.000000)
  mul r9.z, r6.w, r6.w
  mul r9.z, r9.z, r9.z
  mul r6.w, r6.w, r9.z
  mad r13.xyz, r15.xyzx, r6.wwww, r13.xyzx  // r13.x <- <FresnelSchlick_id168 return value>.x; r13.y <- <FresnelSchlick_id168 return value>.y; r13.z <- <FresnelSchlick_id168 return value>.z

#line 279
  mul r6.w, r9.y, l(0.500000)  // r6.w <- k
  mad r9.z, -r9.y, l(0.500000), l(1.000000)
  mad r9.w, r4.w, r9.z, r6.w
  div r9.w, r4.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id186 return value>
  mad r6.w, r11.z, r9.z, r6.w
  div r6.w, r11.z, r6.w  // r6.w <- <VisibilityhSchlickGGX_id186 return value>

#line 331
  mul r6.w, r6.w, r9.w
  mul r4.w, r11.z, r4.w
  div r4.w, r6.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id188 return value>

#line 326
  mul r6.w, r9.y, r9.y  // r6.w <- alphaR2
  mul r5.w, r5.w, r5.w
  mad r9.z, r9.y, r9.y, l(-1.000000)
  mad r5.w, r5.w, r9.z, l(1.000000)
  max r5.w, r5.w, l(0.000100)
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r5.w, r6.w, r5.w  // r5.w <- <NormalDistributionGGX_id202 return value>

#line 555
  mul r13.xyz, r4.wwww, r13.xyzx
  mul r13.xyz, r5.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 667
  mad r12.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r7.yzwy  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 653
  iadd r4.z, r4.z, l(1)

#line 669
endloop   // r11.x <- streams.lightIndex_id84

#line 544
ushr r3.w, r4.y, l(16)  // r3.w <- <GetMaxLightCount_id229 return value>

#line 677
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id19.x; r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r5.xyz, r0.xyzx  // r5.x <- streams.viewWS_id61.x; r5.y <- streams.viewWS_id61.y; r5.z <- streams.viewWS_id61.z
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id16.x; r6.y <- streams.normalWS_id16.y; r6.z <- streams.normalWS_id16.z
mov r7.xyz, r2.xyzx  // r7.y <- streams.matDiffuseVisible_id62.y; r7.z <- streams.matDiffuseVisible_id62.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.matSpecularVisible_id64.x; r8.y <- streams.matSpecularVisible_id64.y; r8.z <- streams.matSpecularVisible_id64.z
mov r9.x, r0.w  // r9.x <- streams.alphaRoughness_id63
mov r9.z, r1.w  // r9.z <- streams.NdotV_id65
mov r10.xyz, r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r4.w, r11.x  // r4.w <- streams.lightIndex_id84
mov r5.w, l(0)  // r5.w <- i
loop 
  ige r6.w, r5.w, r3.w
  breakc_nz r6.w
  if_nz r6.w
    break 
  endif 

#line 424
  ld r13.xyzw, r4.wwww, t4.xyzw  // r13.x <- realLightIndex
  iadd r4.w, r4.w, l(1)  // r4.w <- streams.lightIndex_id84
  ishl r6.w, r13.x, l(2)
  ld r13.xyzw, r6.wwww, t6.xyzw  // r13.x <- spotLight1.x; r13.y <- spotLight1.y; r13.z <- spotLight1.z

#line 430
  iadd r11.yzw, r6.wwww, l(0, 1, 2, 3)
  ld r14.xyzw, r11.yyyy, t6.xyzw  // r14.x <- spotLight2.x; r14.y <- spotLight2.y; r14.z <- spotLight2.z
  ld r15.xyzw, r11.zzzz, t6.xyzw  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.z <- spotLight3.z
  ld r16.xyzw, r11.wwww, t6.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 311
  add r11.yzw, -r4.xxyz, r13.xxyz  // r11.y <- lightVector.x; r11.z <- lightVector.y; r11.w <- lightVector.z
  dp3 r6.w, r11.yzwy, r11.yzwy
  sqrt r7.w, r6.w  // r7.w <- lightVectorLength
  div r11.yzw, r11.yyzw, r7.wwww  // r11.y <- lightVectorNorm.x; r11.z <- lightVectorNorm.y; r11.w <- lightVectorNorm.z

#line 273
  max r7.w, r6.w, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 215
  mul r6.w, r15.z, r6.w  // r6.w <- factor
  mad r6.w, -r6.w, r6.w, l(1.000000)
  max r6.w, r6.w, l(0.000000)  // r6.w <- smoothFactor
  mul r6.w, r6.w, r6.w  // r6.w <- <SmoothDistanceAttenuation_id83 return value>

#line 274
  mul r6.w, r6.w, r7.w  // r6.w <- attenuation

#line 265
  dp3 r7.w, -r14.xyzx, r11.yzwy  // r7.w <- cd
  mad_sat r7.w, r7.w, r15.x, r15.y  // r7.w <- attenuation
  mul r7.w, r7.w, r7.w

#line 320
  mul r6.w, r6.w, r7.w  // r6.w <- attenuation
  mul r13.xyz, r6.wwww, r16.xyzx  // r13.x <- streams.lightColor_id39.x; r13.y <- streams.lightColor_id39.y; r13.z <- streams.lightColor_id39.z

#line 534
  dp3 r6.w, r6.xyzx, r11.yzwy
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotL_id43
  mul r13.xyz, r6.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id40.x; r13.y <- streams.lightColorNdotL_id40.y; r13.z <- streams.lightColorNdotL_id40.z

#line 565
  add r14.xyz, r5.xyzx, r11.yzwy
  dp3 r7.w, r14.xyzx, r14.xyzx
  rsq r7.w, r7.w
  mul r14.xyz, r7.wwww, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r7.w, r6.xyzx, r14.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotH_id69
  dp3 r8.w, r11.yzwy, r14.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.LdotH_id70

#line 561
  mul r11.yzw, r7.xxyz, r13.xxyz

#line 687
  mad r11.yzw, r11.yyzw, l(0.000000, 0.318310, 0.318310, 0.318310), r10.xxyz  // r11.y <- directLightingContribution.x; r11.z <- directLightingContribution.y; r11.w <- directLightingContribution.z

#line 284
  add r14.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.w, -r8.w, l(1.000000)
  mul r9.y, r8.w, r8.w
  mul r9.y, r9.y, r9.y
  mul r8.w, r8.w, r9.y
  mad r14.xyz, r14.xyzx, r8.wwww, r8.xyzx  // r14.x <- <FresnelSchlick_id168 return value>.x; r14.y <- <FresnelSchlick_id168 return value>.y; r14.z <- <FresnelSchlick_id168 return value>.z

#line 279
  mul r8.w, r9.x, l(0.500000)  // r8.w <- k
  mad r9.y, -r9.x, l(0.500000), l(1.000000)
  mad r9.w, r6.w, r9.y, r8.w
  div r9.w, r6.w, r9.w  // r9.w <- <VisibilityhSchlickGGX_id186 return value>
  mad r8.w, r9.z, r9.y, r8.w
  div r8.w, r9.z, r8.w  // r8.w <- <VisibilityhSchlickGGX_id186 return value>

#line 331
  mul r8.w, r8.w, r9.w
  mul r6.w, r9.z, r6.w
  div r6.w, r8.w, r6.w  // r6.w <- <VisibilitySmithSchlickGGX_id188 return value>

#line 326
  mul r8.w, r9.x, r9.x  // r8.w <- alphaR2
  mul r7.w, r7.w, r7.w
  mad r9.y, r9.x, r9.x, l(-1.000000)
  mad r7.w, r7.w, r9.y, l(1.000000)
  max r7.w, r7.w, l(0.000100)
  mul r7.w, r7.w, r7.w
  mul r7.w, r7.w, l(3.141593)
  div r7.w, r8.w, r7.w  // r7.w <- <NormalDistributionGGX_id202 return value>

#line 555
  mul r14.xyz, r6.wwww, r14.xyzx
  mul r14.xyz, r7.wwww, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 691
  mad r10.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r11.yzwy  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 677
  iadd r5.w, r5.w, l(1)

#line 693
endloop   // r4.w <- streams.lightIndex_id84

#line 303
dp2 r3.w, cb2[45].xxxx, cb2[27].zzzz

#line 295
mov r4.w, l(1.000000)

#line 701
mov r5.xyz, v0.xyzx  // r5.x <- streams.PositionWS_id19.x; r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r5.w, v2.x  // r5.w <- streams.DepthVS_id20
mov r6.xyz, r0.xyzx  // r6.x <- streams.viewWS_id61.x; r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id16.x; r7.y <- streams.normalWS_id16.y; r7.z <- streams.normalWS_id16.z
mov r8.xyz, r2.xyzx  // r8.x <- streams.matDiffuseVisible_id62.x; r8.y <- streams.matDiffuseVisible_id62.y; r8.z <- streams.matDiffuseVisible_id62.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.matSpecularVisible_id64.x; r9.y <- streams.matSpecularVisible_id64.y; r9.z <- streams.matSpecularVisible_id64.z
mov r11.x, r0.w  // r11.x <- streams.alphaRoughness_id63
mov r11.z, r1.w  // r11.z <- streams.NdotV_id65
mov r12.xyz, r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r6.w, l(0)  // r6.w <- i
loop 
  ige r7.w, r6.w, l(1)
  breakc_nz r7.w
  ige r7.w, r6.w, cb2[24].y
  if_nz r7.w
    break 
  endif 

#line 516
  dp3 r7.w, r7.xyzx, -cb2[25].xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id43

#line 374
  ishl r8.w, r6.w, l(2)  // r8.w <- cascadeIndexBase

#line 381
  lt r9.w, cb2[r8.w + 46].x, r5.w

#line 384
  and r9.w, r9.w, l(1)  // r9.w <- cascadeIndex

#line 381
  iadd r11.yw, r8.wwww, l(0, 1, 0, 2)
  lt r10.w, cb2[r11.y + 46].x, r5.w

#line 384
  movc r9.w, r10.w, l(2), r9.w

#line 381
  lt r10.w, cb2[r11.w + 46].x, r5.w

#line 384
  movc r9.w, r10.w, l(3), r9.w

#line 302
  add r11.y, -r7.w, l(1.000000)
  max r11.y, r11.y, l(0.000000)  // r11.y <- normalOffsetScale
  mul r11.y, r3.w, r11.y

#line 388
  mad r4.xyz, r11.yyyy, r7.xyzx, r5.xyzx  // r4.x <- shadowPosition.x; r4.y <- shadowPosition.y; r4.z <- shadowPosition.z

#line 295
  iadd r8.w, r8.w, r9.w
  ishl r11.y, r8.w, l(2)
  dp4 r13.x, r4.xyzw, cb2[r11.y + 28].xyzw  // r13.x <- shadowPosition.x
  dp4 r13.y, r4.xyzw, cb2[r11.y + 29].xyzw  // r13.y <- shadowPosition.y
  dp4 r11.w, r4.xyzw, cb2[r11.y + 30].xyzw  // r11.w <- shadowPosition.z
  dp4 r12.w, r4.xyzw, cb2[r11.y + 31].xyzw  // r12.w <- shadowPosition.w
  add r13.z, r11.w, -cb2[44].x  // r13.z <- shadowPosition.z
  div r13.xyz, r13.xyzx, r12.wwww

#line 231
  mad r13.xy, r13.xyxx, cb2[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r14.xy, r13.xyxx  // r14.x <- base_uv.x; r14.y <- base_uv.y
  add r13.xy, r13.xyxx, -r14.xyxx  // r13.x <- s; r13.y <- t
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r14.xy, r14.xyxx, cb2[27].zwzz

#line 244
  mad r14.zw, -r13.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r14.w <- uw0; r14.z <- vw0
  mad r15.xy, r13.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r15.x <- uw2; r15.y <- vw2
  mad r15.zw, -r13.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r15.zw, r15.zzzw, r14.wwwz
  add r16.xy, r13.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r13.xy, r13.xyxx, r15.xyxx
  add r17.xw, r15.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r17.x <- u0; r17.w <- v0
  mul r17.yz, r16.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r17.z <- u1; r17.y <- v1
  add r16.xy, r13.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r16.x <- u2; r16.y <- v2
  mul r11.w, r14.z, r14.w
  mad r18.xyzw, r17.xwzw, cb2[27].zwzw, r14.xyxy

#line 211
  sample_c r12.w, r18.xyxx, t7.xxxx, s0, r13.z  // r12.w <- <SampleTextureAndCompare_id99 return value>

#line 253
  mul r13.xy, r14.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 211
  sample_c r13.w, r18.zwzz, t7.xxxx, s0, r13.z  // r13.w <- <SampleTextureAndCompare_id99 return value>

#line 251
  mul r13.x, r13.w, r13.x
  mad r11.w, r11.w, r12.w, r13.x  // r11.w <- shadow

#line 256
  mul r13.xw, r14.zzzw, r15.xxxy
  mov r16.zw, r17.wwwy
  mad r18.xyzw, r16.xzxw, cb2[27].zwzw, r14.xyxy

#line 211
  sample_c r12.w, r18.xyxx, t7.xxxx, s0, r13.z  // r12.w <- <SampleTextureAndCompare_id99 return value>

#line 252
  mad r11.w, r13.x, r12.w, r11.w
  mad r19.xyzw, r17.xyzy, cb2[27].zwzw, r14.xyxy

#line 211
  sample_c r12.w, r19.xyxx, t7.xxxx, s0, r13.z

#line 253
  mad r11.w, r13.y, r12.w, r11.w

#line 211
  sample_c r12.w, r19.zwzz, t7.xxxx, s0, r13.z

#line 254
  mad r11.w, r12.w, l(49.000000), r11.w

#line 257
  mul r13.xy, r15.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 211
  sample_c r12.w, r18.zwzz, t7.xxxx, s0, r13.z

#line 255
  mad r11.w, r13.x, r12.w, r11.w
  mov r17.y, r16.y
  mad r17.xyzw, r17.xyzy, cb2[27].zwzw, r14.xyxy

#line 211
  sample_c r12.w, r17.xyxx, t7.xxxx, s0, r13.z

#line 256
  mad r11.w, r13.w, r12.w, r11.w

#line 211
  sample_c r12.w, r17.zwzz, t7.xxxx, s0, r13.z

#line 257
  mad r11.w, r13.y, r12.w, r11.w
  mul r12.w, r15.y, r15.x
  mad r13.xy, r16.xyxx, cb2[27].zwzz, r14.xyxx

#line 211
  sample_c r13.x, r13.xyxx, t7.xxxx, s0, r13.z  // r13.x <- <SampleTextureAndCompare_id99 return value>

#line 258
  mad r11.w, r12.w, r13.x, r11.w
  mul r12.w, r11.w, l(0.006944)  // r12.w <- shadow

#line 393
  iadd r13.x, r8.w, l(-1)
  add r13.x, -cb2[r13.x + 46].x, cb2[r8.w + 46].x
  movc r9.w, r9.w, r13.x, cb2[r8.w + 46].x  // r9.w <- splitSize
  add r8.w, -r5.w, cb2[r8.w + 46].x
  div r8.w, r8.w, r9.w  // r8.w <- splitDist
  lt r9.w, r8.w, l(0.200000)

#line 295
  iadd r11.y, r11.y, l(4)
  dp4 r13.x, r4.xyzw, cb2[r11.y + 28].xyzw  // r13.x <- shadowPosition.x
  dp4 r13.y, r4.xyzw, cb2[r11.y + 29].xyzw  // r13.y <- shadowPosition.y
  dp4 r13.w, r4.xyzw, cb2[r11.y + 30].xyzw  // r13.w <- shadowPosition.z
  dp4 r4.x, r4.xyzw, cb2[r11.y + 31].xyzw  // r4.x <- shadowPosition.w
  add r13.z, r13.w, -cb2[44].x  // r13.z <- shadowPosition.z
  div r4.xyz, r13.xyzx, r4.xxxx  // r4.x <- shadowPosition.x; r4.y <- shadowPosition.y; r4.z <- shadowPosition.z

#line 231
  mad r4.xy, r4.xyxx, cb2[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r13.xy, r4.xyxx  // r13.x <- base_uv.x; r13.y <- base_uv.y
  add r4.xy, r4.xyxx, -r13.xyxx  // r4.x <- s; r4.y <- t
  add r13.xy, r13.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r13.xy, r13.xyxx, cb2[27].zwzz

#line 244
  mad r13.zw, -r4.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r13.w <- uw0; r13.z <- vw0
  mad r14.xy, r4.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r14.x <- uw2; r14.y <- vw2
  mad r14.zw, -r4.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r14.zw, r14.zzzw, r13.wwwz
  add r15.xy, r4.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r4.xy, r4.xyxx, r14.xyxx
  add r16.xw, r14.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r16.x <- u0; r16.w <- v0
  mul r16.yz, r15.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r16.z <- u1; r16.y <- v1
  add r15.xy, r4.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r15.x <- u2; r15.y <- v2
  mad r17.xyzw, r16.xwzw, cb2[27].zwzw, r13.xyxy

#line 211
  sample_c r4.x, r17.xyxx, t7.xxxx, s0, r4.z  // r4.x <- <SampleTextureAndCompare_id99 return value>
  sample_c r4.y, r17.zwzz, t7.xxxx, s0, r4.z  // r4.y <- <SampleTextureAndCompare_id99 return value>

#line 255
  mov r15.zw, r16.wwwy
  mad r17.xyzw, r15.xzxw, cb2[27].zwzw, r13.xyxy

#line 211
  sample_c r11.y, r17.xyxx, t7.xxxx, s0, r4.z  // r11.y <- <SampleTextureAndCompare_id99 return value>

#line 254
  mad r18.xyzw, r16.xyzy, cb2[27].zwzw, r13.xyxy

#line 211
  sample_c r14.z, r18.xyxx, t7.xxxx, s0, r4.z  // r14.z <- <SampleTextureAndCompare_id99 return value>
  sample_c r14.w, r18.zwzz, t7.xxxx, s0, r4.z  // r14.w <- <SampleTextureAndCompare_id99 return value>
  sample_c r15.z, r17.zwzz, t7.xxxx, s0, r4.z  // r15.z <- <SampleTextureAndCompare_id99 return value>

#line 256
  mov r16.y, r15.y
  mad r16.xyzw, r16.xyzy, cb2[27].zwzw, r13.xyxy

#line 211
  sample_c r15.w, r16.xyxx, t7.xxxx, s0, r4.z  // r15.w <- <SampleTextureAndCompare_id99 return value>
  sample_c r16.x, r16.zwzz, t7.xxxx, s0, r4.z  // r16.x <- <SampleTextureAndCompare_id99 return value>

#line 258
  mad r13.xy, r15.xyxx, cb2[27].zwzz, r13.xyxx

#line 211
  sample_c r4.z, r13.xyxx, t7.xxxx, s0, r4.z  // r4.z <- <SampleTextureAndCompare_id99 return value>

#line 395
  if_nz r9.w

#line 398
    if_z r10.w
      mul_sat r8.w, r8.w, l(5.000000)
      mad r9.w, r8.w, l(-2.000000), l(3.000000)
      mul r8.w, r8.w, r8.w
      mul r8.w, r8.w, r9.w  // r8.w <- lerpAmt

#line 250
      mul r9.w, r13.z, r13.w
      mul r4.y, r13.z, r4.y
      mul r4.y, r4.y, l(7.000000)
      mad r4.x, r9.w, r4.x, r4.y  // r4.x <- shadow

#line 256
      mul r13.xy, r13.zwzz, r14.xyxx

#line 252
      mad r4.x, r13.x, r11.y, r4.x
      mul r4.y, r13.w, r14.z
      mad r4.x, r4.y, l(7.000000), r4.x
      mad r4.x, r14.w, l(49.000000), r4.x
      mul r4.y, r14.x, r15.z
      mad r4.x, r4.y, l(7.000000), r4.x
      mad r4.x, r13.y, r15.w, r4.x
      mul r4.y, r14.y, r16.x
      mad r4.x, r4.y, l(7.000000), r4.x
      mul r4.y, r14.y, r14.x
      mad r4.x, r4.y, r4.z, r4.x
      mul r4.x, r4.x, l(0.006944)

#line 404
      mad r4.y, r11.w, l(0.006944), -r4.x
      mad r12.w, r8.w, r4.y, r4.x
    endif 
  endif   // r12.w <- shadow

#line 518
  mul r4.xyz, r12.wwww, cb2[26].xyzx
  mul r4.xyz, r7.wwww, r4.xyzx  // r4.x <- streams.lightColorNdotL_id40.x; r4.y <- streams.lightColorNdotL_id40.y; r4.z <- streams.lightColorNdotL_id40.z

#line 565
  add r13.xyz, r6.xyzx, -cb2[25].xyzx
  dp3 r8.w, r13.xyzx, r13.xyzx
  rsq r8.w, r8.w
  mul r13.xyz, r8.wwww, r13.xyzx  // r13.x <- streams.H_id68.x; r13.y <- streams.H_id68.y; r13.z <- streams.H_id68.z
  dp3 r8.w, r7.xyzx, r13.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.NdotH_id69
  dp3 r9.w, -cb2[25].xyzx, r13.xyzx
  max r9.w, r9.w, l(0.000100)  // r9.w <- streams.LdotH_id70

#line 561
  mul r13.xyz, r4.xyzx, r8.xyzx

#line 711
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 284
  add r14.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.w, -r9.w, l(1.000000)
  mul r10.w, r9.w, r9.w
  mul r10.w, r10.w, r10.w
  mul r9.w, r9.w, r10.w
  mad r14.xyz, r14.xyzx, r9.wwww, r9.xyzx  // r14.x <- <FresnelSchlick_id168 return value>.x; r14.y <- <FresnelSchlick_id168 return value>.y; r14.z <- <FresnelSchlick_id168 return value>.z

#line 279
  mul r9.w, r11.x, l(0.500000)  // r9.w <- k
  mad r10.w, -r11.x, l(0.500000), l(1.000000)
  mad r11.y, r7.w, r10.w, r9.w
  div r11.y, r7.w, r11.y  // r11.y <- <VisibilityhSchlickGGX_id186 return value>
  mad r9.w, r11.z, r10.w, r9.w
  div r9.w, r11.z, r9.w  // r9.w <- <VisibilityhSchlickGGX_id186 return value>

#line 331
  mul r9.w, r9.w, r11.y
  mul r7.w, r11.z, r7.w
  div r7.w, r9.w, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id188 return value>

#line 326
  mul r9.w, r11.x, r11.x  // r9.w <- alphaR2
  mul r8.w, r8.w, r8.w
  mad r10.w, r11.x, r11.x, l(-1.000000)
  mad r8.w, r8.w, r10.w, l(1.000000)
  max r8.w, r8.w, l(0.000100)
  mul r8.w, r8.w, r8.w
  mul r8.w, r8.w, l(3.141593)
  div r8.w, r9.w, r8.w  // r8.w <- <NormalDistributionGGX_id202 return value>

#line 555
  mul r14.xyz, r7.wwww, r14.xyzx
  mul r14.xyz, r8.wwww, r14.xyzx
  mul r4.xyz, r4.xyzx, r14.xyzx

#line 715
  mad r12.xyz, r4.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 701
  iadd r6.w, r6.w, l(1)

#line 717
endloop 

#line 350
add r0.x, -r0.w, l(1.000000)  // r0.x <- x

#line 358
mul r0.y, r0.x, r0.x

#line 366
mul r0.z, r0.y, l(1.895000)

#line 358
mad r0.z, r0.x, l(-0.168800), r0.z
mad r0.w, r1.w, l(-4.853000), l(0.990300)
mul r1.x, r1.w, r1.w
mad r0.w, r1.x, l(8.404000), r0.w
mul r1.y, r1.w, r1.x
mad r0.w, r1.y, l(-5.069000), r0.w
min_sat r0.z, r0.w, r0.z  // r0.z <- bias

#line 366
mad r0.w, r0.x, l(1.699000), l(0.604500)
mad r0.w, r1.w, l(-0.522800), r0.w
mad r0.w, r0.y, l(-3.603000), r0.w
mul r1.y, r0.x, r1.w
mad r0.w, r1.y, l(1.404000), r0.w
mad r0.w, r1.x, l(0.193900), r0.w
mul r0.x, r0.x, r0.y
mad_sat r0.x, r0.x, l(2.661000), r0.w  // r0.x <- delta
add r0.x, -r0.z, r0.x  // r0.x <- scale
mul_sat r0.y, r3.y, l(50.000000)
mul r0.y, r0.y, r0.z  // r0.y <- bias
mad r0.xyz, r3.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id203 return value>.x; r0.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id203 return value>.y; r0.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id203 return value>.z

#line 500
mul r0.xyz, r0.xyzx, cb2[50].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id398 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id398 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id398 return value>.z

#line 729
mad r0.xyz, r2.xyzx, cb2[50].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 732
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 917
mov o0.w, r2.w
ret 
// Approximately 462 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id82 = 64;
const static int TMaxLightCount_id95 = 1;
const static int TCascadeCountBase_id158 = 4;
const static int TLightCountBase_id159 = 1;
const static int TCascadeCount_id163 = 4;
const static int TLightCount_id164 = 1;
const static bool TBlendCascades_id165 = true;
const static bool TDepthRangeAuto_id166 = true;
const static bool TCascadeDebug_id167 = false;
const static int TFilterSize_id169 = 5;
const static bool TIsNormalXY1_id182 = true;
const static bool TScaleAndBias_id183 = true;
const static bool TInvertY_id184 = false;
const static bool TInvert_id193 = false;
const static bool TIsEnergyConservative_id204 = false;
static const float PI_id206 = 3.14159265358979323846;
SamplerComparisonState LinearClampCompareLessEqualSampler_id132 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
Texture2D Texture_id172;
SamplerState Sampler_id173;
Texture2D Texture_id178;
Texture2D Texture_id186;
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
Texture2D ShadowMapTexture_id97;
struct PS_STREAMS 
{
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float4 PositionWS_id19;
    float2 TexCoord_id148;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3x3 tangentToWorld_id17;
    float3 viewWS_id61;
    float3 shadingColor_id66;
    float matBlend_id37;
    float3 matNormal_id45;
    float4 matColorBase_id46;
    float4 matDiffuse_id47;
    float3 matDiffuseVisible_id62;
    float3 matSpecular_id49;
    float3 matSpecularVisible_id64;
    float matSpecularIntensity_id50;
    float matGlossiness_id48;
    float alphaRoughness_id63;
    float matAmbientOcclusion_id51;
    float matAmbientOcclusionDirectLightingFactor_id52;
    float matCavity_id53;
    float matCavityDiffuse_id54;
    float matCavitySpecular_id55;
    float4 matEmissive_id56;
    float matEmissiveIntensity_id57;
    float2 matDiffuseSpecularAlphaBlend_id58;
    float3 matAlphaBlendColor_id59;
    float matAlphaDiscard_id60;
    float shadingColorAlpha_id67;
    float3 normalWS_id16;
    float3 lightDirectionWS_id38;
    float3 lightColor_id39;
    float3 lightColorNdotL_id40;
    float3 envLightDiffuseColor_id41;
    float3 envLightSpecularColor_id42;
    float lightDirectAmbientOcclusion_id44;
    float NdotL_id43;
    float NdotV_id65;
    uint2 lightData_id83;
    int lightIndex_id84;
    float3 shadowColor_id76;
    float3 H_id68;
    float NdotH_id69;
    float LdotH_id70;
    float VdotH_id71;
    float4 ColorTarget_id1;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id1 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id18;
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float2 TexCoord_id148;
    float4 PositionH_id21;
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id20 : DEPTH_VS;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id148 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id148 : TEXCOORD0;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
cbuffer PerDraw 
{
    float4x4 World_id29;
    float4x4 WorldInverse_id30;
    float4x4 WorldInverseTranspose_id31;
    float4x4 WorldView_id32;
    float4x4 WorldViewInverse_id33;
    float4x4 WorldViewProjection_id34;
    float3 WorldScale_id35;
    float4 EyeMS_id36;
};
cbuffer PerMaterial 
{
    float2 scale_id175;
    float2 offset_id176;
    float2 scale_id180;
    float2 offset_id181;
    float2 scale_id188;
    float2 offset_id189;
    float constantFloat_id190;
    float4 constantColor_id198;
    float constantFloat_id200;
};
cbuffer PerView 
{
    float4x4 View_id22;
    float4x4 ViewInverse_id23;
    float4x4 Projection_id24;
    float4x4 ProjectionInverse_id25;
    float4x4 ViewProjection_id26;
    float2 ProjScreenRay_id27;
    float4 Eye_id28;
    float NearClipPlane_id77 = 1.0f;
    float FarClipPlane_id78 = 100.0f;
    float2 ZProjection_id79;
    float2 ViewSize_id80;
    float AspectRatio_id81;
    float ClusterDepthScale_id87;
    float ClusterDepthBias_id88;
    int LightCount_id94;
    DirectionalLightData Lights_id96[TMaxLightCount_id95];
    float2 ShadowMapTextureSize_id98;
    float2 ShadowMapTextureTexelSize_id99;
    float4x4 WorldToShadowCascadeUV_id160[TCascadeCountBase_id158 * TLightCountBase_id159];
    float DepthBiases_id161[TLightCountBase_id159];
    float OffsetScales_id162[TLightCountBase_id159];
    float CascadeDepthSplits_id168[TCascadeCount_id163 * TLightCount_id164];
    float Bias_id170;
    float3 AmbientLight_id171;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id101;
    float2 Texture1TexelSize_id103;
    float2 Texture2TexelSize_id105;
    float2 Texture3TexelSize_id107;
    float2 Texture4TexelSize_id109;
    float2 Texture5TexelSize_id111;
    float2 Texture6TexelSize_id113;
    float2 Texture7TexelSize_id115;
    float2 Texture8TexelSize_id117;
    float2 Texture9TexelSize_id119;
};
float SampleTextureAndCompare_id99(float2 position, float positionDepth)
{
    return ShadowMapTexture_id97.SampleCmp(LinearClampCompareLessEqualSampler_id132, position, positionDepth);
}
float SmoothDistanceAttenuation_id83(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id75(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id95(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 uv = position * ShadowMapTextureSize_id98;
    float2 base_uv;
    base_uv.x = floor(uv.x + 0.5);
    base_uv.y = floor(uv.y + 0.5);
    float s = (uv.x + 0.5 - base_uv.x);
    float t = (uv.y + 0.5 - base_uv.y);
    base_uv -= float2(0.5, 0.5);
    base_uv *= ShadowMapTextureTexelSize_id99;

    {
        float uw0 = (4 - 3 * s);
        float uw1 = 7;
        float uw2 = (1 + 3 * s);
        float u0 = (3 - 2 * s) / uw0 - 2;
        float u1 = (3 + s) / uw1;
        float u2 = s / uw2 + 2;
        float vw0 = (4 - 3 * t);
        float vw1 = 7;
        float vw2 = (1 + 3 * t);
        float v0 = (3 - 2 * t) / vw0 - 2;
        float v1 = (3 + t) / vw1;
        float v2 = t / vw2 + 2;
        shadow += uw0 * vw0 * SampleTextureAndCompare_id99(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id99(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id99(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id99(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id99(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id99(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id99(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id99(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id99(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id85(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id84(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id83(d2, lightInvSquareRadius);
    return attenuation;
}
float VisibilityhSchlickGGX_id186(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id168(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id76(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id75(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id98(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id160[cascadeIndex + lightIndex * TCascadeCountBase_id158]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id95(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id97(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id99.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id96(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void ProcessLight_id86(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id84(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id85(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float NormalDistributionGGX_id202(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id206 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id188(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id186(alphaR, nDotL) * VisibilityhSchlickGGX_id186(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id174(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id168(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id78(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id76(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id203(float3 specularColor, float alphaR, float nDotV)
{
    float x = 1 - alphaR;
    float y = nDotV;
    float b1 = -0.1688;
    float b2 = 1.895;
    float b3 = 0.9903;
    float b4 = -4.853;
    float b5 = 8.404;
    float b6 = -5.069;
    float bias = saturate(min(b1 * x + b2 * x * x, b3 + b4 * y + b5 * y * y + b6 * y * y * y));
    float d0 = 0.6045;
    float d1 = 1.699;
    float d2 = -0.5228;
    float d3 = -3.603;
    float d4 = 1.404;
    float d5 = 0.1939;
    float d6 = 2.661;
    float delta = saturate(d0 + d1 * x + d2 * y + d3 * x * x + d4 * x * y + d5 * y * y + d6 * x * x * x);
    float scale = delta - bias;
    bias *= saturate(50.0 * specularColor.y);
    return specularColor * scale + bias;
}
void ComputeShadow_id90(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id96(streams, lightIndex);
    int cascadeIndexBase = lightIndex * TCascadeCount_id163;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id163 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id20 > CascadeDepthSplits_id168[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float shadow = 1.0;
    float3 shadowPosition = streams.PositionWS_id19.xyz;
    shadowPosition += GetShadowPositionOffset_id97(OffsetScales_id162[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id98(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id168[cascadeIndexBase + cascadeIndex];
        float splitSize = cascadeIndex == 0 ? nextSplit : nextSplit - CascadeDepthSplits_id168[cascadeIndexBase + cascadeIndex - 1];
        float splitDist = (nextSplit - streams.DepthVS_id20) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id163 - 1)
            {
            }
            else if (TBlendCascades_id165)
            {
                float nextShadow = ComputeShadowFromCascade_id98(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id89(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id82(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id81(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id93.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id93.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id93.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id93.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id86(streams, spotLight);
}
float Compute_id319(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id202(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id290(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id188(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id261(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id174(f0, streams.LdotH_id70);
}
void ComputeShadow_id74(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id73(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id78(streams, pointLight);
}
void PrepareLightData_id77(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id140(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
float4 BasicBlend_id443(float4 backColor, float4 frontColor, float3 interColor)
{
    return float4(frontColor.a * backColor.a * interColor + frontColor.a * (1.0f - backColor.a) * frontColor.rgb + (1.0f - frontColor.a) * backColor.a * backColor.rgb, lerp(frontColor.a, 1.0f, backColor.a));
}
float4 Compute_id253()
{
    return float4(constantFloat_id190, constantFloat_id190, constantFloat_id190, constantFloat_id190);
}
float4 Compute_id251(inout PS_STREAMS streams)
{
    return Texture_id186.Sample(Sampler_id173, streams.TexCoord_id148 * scale_id188 + offset_id189).r;
}
void ResetStream_id206()
{
}
float3 ComputeEnvironmentLightContribution_id398(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id203(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id349(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id246(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id171 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id236(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id89(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id90(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id237()
{
    return LightCount_id94;
}
int GetMaxLightCount_id238()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id234()
{
}
void PrepareDirectLight_id227(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id81(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id82(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id230(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id229(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id225()
{
}
float3 ComputeDirectLightContribution_id397(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id261(streams, specularColor);
    float geometricShadowing = Compute_id290(streams);
    float normalDistribution = Compute_id319(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id348(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id206 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id26(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id217(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id73(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id74(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id221(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id220(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id219(inout PS_STREAMS streams)
{
    PrepareLightData_id77(streams);
}
void PrepareMaterialForLightingAndShading_id205(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id140(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id204(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
void UpdateNormalFromTangentSpace_id12(inout PS_STREAMS streams, float3 normalInTangentSpace)
{
    streams.normalWS_id16 = normalize(mul(normalInTangentSpace, streams.tangentToWorld_id17));
}
float4 Compute_id259()
{
    return float4(constantFloat_id200, constantFloat_id200, constantFloat_id200, constantFloat_id200);
}
float4 Compute_id257()
{
    return constantColor_id198;
}
float4 Compute_id256(inout PS_STREAMS streams)
{
    float4 backColor = Compute_id251(streams);
    float4 frontColor = Compute_id253();
    float3 interColor = frontColor.rgb + backColor.rgb;
    return BasicBlend_id443(backColor, frontColor, interColor);
}
float4 Compute_id249(inout PS_STREAMS streams)
{
    return Texture_id178.Sample(Sampler_id173, streams.TexCoord_id148 * scale_id180 + offset_id181).rgba;
}
float4 Compute_id247(inout PS_STREAMS streams)
{
    return Texture_id172.Sample(Sampler_id173, streams.TexCoord_id148 * scale_id175 + offset_id176).rgba;
}
void ResetStream_id209(inout PS_STREAMS streams)
{
    ResetStream_id206();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id438(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id204(streams);
    PrepareMaterialForLightingAndShading_id205(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id219(streams);
        const int maxLightCount = GetMaxLightCount_id220(streams);
        int count = GetLightCount_id221(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id217(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id348(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id397(streams);
            }
        }
    }

    {
        PrepareDirectLights_id225();
        const int maxLightCount = GetMaxLightCount_id229(streams);
        int count = GetLightCount_id230(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id227(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id348(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id397(streams);
            }
        }
    }

    {
        PrepareDirectLights_id234();
        const int maxLightCount = GetMaxLightCount_id238();
        int count = GetLightCount_id237();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id236(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id348(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id397(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id246(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id349(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id398(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id206 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id423(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id259().r;
}
void Compute_id418(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id257().rgb;
}
void Compute_id413(inout PS_STREAMS streams)
{
    float glossiness = Compute_id256(streams).r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id408(inout PS_STREAMS streams)
{
    float4 normal = Compute_id249(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.z = sqrt(max(0, 1.0f - (normal.x * normal.x + normal.y * normal.y)));
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id403(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id247(streams);
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id211(inout PS_STREAMS streams)
{
    ResetStream_id209(streams);
    streams.matNormal_id45 = float3(0, 0, 1);
    streams.matColorBase_id46 = 0.0f;
    streams.matDiffuse_id47 = 0.0f;
    streams.matDiffuseVisible_id62 = 0.0f;
    streams.matSpecular_id49 = 0.0f;
    streams.matSpecularVisible_id64 = 0.0f;
    streams.matSpecularIntensity_id50 = 1.0f;
    streams.matGlossiness_id48 = 0.0f;
    streams.alphaRoughness_id63 = 1.0f;
    streams.matAmbientOcclusion_id51 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id52 = 0.0f;
    streams.matCavity_id53 = 1.0f;
    streams.matCavityDiffuse_id54 = 0.0f;
    streams.matCavitySpecular_id55 = 0.0f;
    streams.matEmissive_id56 = 0.0f;
    streams.matEmissiveIntensity_id57 = 0.0f;
    streams.matDiffuseSpecularAlphaBlend_id58 = 1.0f;
    streams.matAlphaBlendColor_id59 = 1.0f;
    streams.matAlphaDiscard_id60 = 0.0f;
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void Compute_id70(inout PS_STREAMS streams)
{

    {
        Compute_id403(streams);
    }

    {
        Compute_id408(streams);
    }

    {
        Compute_id413(streams);
    }

    {
        Compute_id418(streams);
    }

    {
        Compute_id423(streams);
    }

    {
        Compute_id438(streams);
    }
}
void ResetStream_id69(inout PS_STREAMS streams)
{
    ResetStream_id211(streams);
    streams.shadingColorAlpha_id67 = 1.0f;
}
float3x3 GetTangentWorldTransform_id18()
{
    return (float3x3)World_id29;
}
float3x3 GetTangentMatrix_id9(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix;
    streams.meshNormal_id14 = normalize(streams.meshNormal_id14);
    float3 tangent = normalize(streams.meshTangent_id15.xyz);
    float3 bitangent = streams.meshTangent_id15.w * cross(streams.meshNormal_id14, tangent);
    tangentMatrix = float3x3(tangent, bitangent, streams.meshNormal_id14);
    return tangentMatrix;
}
void PostTransformPosition_id14(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = mul(streams.PositionWS_id19, ViewProjection_id26);
    streams.PositionH_id21 = streams.ShadingPosition_id0;
    streams.DepthVS_id20 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id13(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id19 = mul(streams.Position_id18, World_id29);
}
float4 Shading_id27(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id69(streams);
    Compute_id70(streams);
    return float4(streams.shadingColor_id66, streams.shadingColorAlpha_id67);
}
void PSMain_id1()
{
}
void UpdateTangentToWorld_id11(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix = GetTangentMatrix_id9(streams);
    float3x3 tangentWorldTransform = GetTangentWorldTransform_id18();
    streams.tangentToWorld_id17 = mul(tangentMatrix, tangentWorldTransform);
}
void GenerateNormal_PS_id16()
{
}
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id13(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id1 = Shading_id27(streams);
}
void GenerateNormal_PS_id17(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id16();
    UpdateTangentToWorld_id11(streams);
}
void GenerateNormal_VS_id15(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = 0.0f;
}
void VSMain_id8(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id7(streams);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id19 = __input__.PositionWS_id19;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id20 = __input__.DepthVS_id20;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id148 = __input__.TexCoord_id148;
    GenerateNormal_PS_id17(streams);
    PSMain_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id18 = __input__.Position_id18;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id148 = __input__.TexCoord_id148;
    VSMain_id8(streams);
    GenerateNormal_VS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.meshTangent_id15 = streams.meshTangent_id15;
    __output__.TexCoord_id148 = streams.TexCoord_id148;
    return __output__;
}
