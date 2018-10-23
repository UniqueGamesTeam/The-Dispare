xof 0302txt 0032
Header {
 1;
 0;
 1;
}
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template SkinWeights {
 <6f0d123b-bad2-4167-a0d0-80224f25fabb>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}
Frame MDL_polym1 {
   FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh MDL_polym11 {
 88;
-20.118271;-9.294160;37.078468;,
17.173880;4.144890;37.078468;,
17.173880;-9.294160;37.078468;,
-20.118271;4.144890;37.078468;,
-20.118271;-9.294160;37.078468;,
17.173880;-9.294170;-37.078468;,
-20.118271;-9.294170;-37.078468;,
17.173880;-9.294160;37.078468;,
-20.118271;-9.294160;37.078468;,
-20.118271;4.144890;-37.078468;,
-20.118271;4.144890;37.078468;,
-20.118271;-9.294170;-37.078468;,
17.173880;-9.294160;37.078468;,
17.173880;4.144890;-37.078468;,
17.173880;-9.294170;-37.078468;,
17.173880;4.144890;37.078468;,
-1.754120;9.294170;37.078468;,
-1.441200;9.294160;-37.078468;,
-1.441200;9.294170;37.078468;,
-1.754120;9.294160;-37.078468;,
-20.118271;-9.294170;-37.078468;,
17.173880;4.144890;-37.078468;,
-20.118271;4.144890;-37.078468;,
17.173880;-9.294170;-37.078468;,
-20.118271;4.144890;37.078468;,
-10.945070;5.401440;-37.078468;,
-10.945070;5.401450;37.078468;,
-20.118271;4.144890;-37.078468;,
7.702850;5.401440;-37.078468;,
-10.945070;5.401440;-37.078468;,
17.173880;4.144890;-37.078468;,
7.702850;5.401450;37.078468;,
7.702850;5.401440;-37.078468;,
17.173880;4.144890;37.078468;,
-10.945070;5.401450;37.078468;,
7.702850;5.401450;37.078468;,
-10.945070;5.401450;37.078468;,
-10.945070;7.801990;-37.078468;,
-10.945070;7.802000;37.078468;,
-10.945070;5.401440;-37.078468;,
7.702850;7.801990;-37.078468;,
-10.945070;7.801990;-37.078468;,
7.702850;5.401440;-37.078468;,
7.702850;7.802000;37.078468;,
7.702850;7.801990;-37.078468;,
7.702850;5.401450;37.078468;,
7.702850;5.401450;37.078468;,
-10.945070;7.802000;37.078468;,
7.702850;7.802000;37.078468;,
-10.945070;5.401450;37.078468;,
-10.945070;7.802000;37.078468;,
-1.754120;9.294160;-37.078468;,
-1.754120;9.294170;37.078468;,
-10.945070;7.801990;-37.078468;,
-1.441200;9.294160;-37.078468;,
-1.754120;9.294160;-37.078468;,
7.702850;7.801990;-37.078468;,
-1.441200;9.294170;37.078468;,
-1.441200;9.294160;-37.078468;,
7.702850;7.802000;37.078468;,
7.702850;7.802000;37.078468;,
-1.754120;9.294170;37.078468;,
-1.441200;9.294170;37.078468;,
-10.945070;7.802000;37.078468;,
17.038971;-9.290240;31.110319;,
20.118271;-5.729170;31.110319;,
20.118271;-9.290240;31.110319;,
17.038971;-4.487060;31.110319;,
17.038971;-9.290240;31.110319;,
20.118271;-9.290240;24.317289;,
17.038971;-9.290240;24.317289;,
20.118271;-9.290240;31.110319;,
17.038971;-9.290240;31.110319;,
17.038971;-4.487060;24.317289;,
17.038971;-4.487060;31.110319;,
17.038971;-9.290240;24.317289;,
20.118271;-9.290240;31.110319;,
20.118271;-5.729170;24.317289;,
20.118271;-9.290240;24.317289;,
20.118271;-5.729170;31.110319;,
17.038971;-4.487060;31.110319;,
20.118271;-5.729170;24.317289;,
20.118271;-5.729170;31.110319;,
17.038971;-4.487060;24.317289;,
17.038971;-9.290240;24.317289;,
20.118271;-5.729170;24.317289;,
17.038971;-4.487060;24.317289;,
20.118271;-9.290240;24.317289;;

 48;
3;2,1,0;,
3;1,3,0;,
3;6,5,4;,
3;5,7,4;,
3;10,9,8;,
3;9,11,8;,
3;14,13,12;,
3;13,15,12;,
3;18,17,16;,
3;17,19,16;,
3;22,21,20;,
3;21,23,20;,
3;26,25,24;,
3;25,27,24;,
3;29,28,22;,
3;28,21,22;,
3;32,31,30;,
3;31,33,30;,
3;35,34,1;,
3;34,3,1;,
3;38,37,36;,
3;37,39,36;,
3;41,40,29;,
3;40,28,29;,
3;44,43,42;,
3;43,45,42;,
3;48,47,46;,
3;47,49,46;,
3;52,51,50;,
3;51,53,50;,
3;55,54,41;,
3;54,40,41;,
3;58,57,56;,
3;57,59,56;,
3;62,61,60;,
3;61,63,60;,
3;66,65,64;,
3;65,67,64;,
3;70,69,68;,
3;69,71,68;,
3;74,73,72;,
3;73,75,72;,
3;78,77,76;,
3;77,79,76;,
3;82,81,80;,
3;81,83,80;,
3;86,85,84;,
3;85,87,84;;
MeshMaterialList {
 1;
 48;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
Material DefaultLib_Mater {
 0.698039;0.698039;0.698039;1.000000;;
2048.000000;
 1.000000;1.000000;1.000000;;
 0.059608;0.059608;0.059608;;
TextureFilename {
"trainHal.png";
}
 }
}

 MeshNormals {
 88;
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
-0.135710;0.990749;0.000000;,
-0.135710;0.990749;0.000000;,
-0.135710;0.990749;0.000000;,
-0.135710;0.990749;0.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
0.131520;0.991313;0.000000;,
0.131520;0.991313;0.000000;,
0.131520;0.991313;0.000000;,
0.131520;0.991313;0.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
-0.160249;0.987077;0.000000;,
-0.160249;0.987077;0.000000;,
-0.160249;0.987077;0.000000;,
-0.160249;0.987077;0.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
0.161049;0.986946;0.000000;,
0.161049;0.986946;0.000000;,
0.161049;0.986946;0.000000;,
0.161049;0.986946;0.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
0.374091;0.927392;0.000000;,
0.374091;0.927392;0.000000;,
0.374091;0.927392;0.000000;,
0.374091;0.927392;0.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;;

 48;
3;2,1,0;,
3;1,3,0;,
3;6,5,4;,
3;5,7,4;,
3;10,9,8;,
3;9,11,8;,
3;14,13,12;,
3;13,15,12;,
3;18,17,16;,
3;17,19,16;,
3;22,21,20;,
3;21,23,20;,
3;26,25,24;,
3;25,27,24;,
3;29,28,22;,
3;28,21,22;,
3;32,31,30;,
3;31,33,30;,
3;35,34,1;,
3;34,3,1;,
3;38,37,36;,
3;37,39,36;,
3;41,40,29;,
3;40,28,29;,
3;44,43,42;,
3;43,45,42;,
3;48,47,46;,
3;47,49,46;,
3;52,51,50;,
3;51,53,50;,
3;55,54,41;,
3;54,40,41;,
3;58,57,56;,
3;57,59,56;,
3;62,61,60;,
3;61,63,60;,
3;66,65,64;,
3;65,67,64;,
3;70,69,68;,
3;69,71,68;,
3;74,73,72;,
3;73,75,72;,
3;78,77,76;,
3;77,79,76;,
3;82,81,80;,
3;81,83,80;,
3;86,85,84;,
3;85,87,84;;
 }
MeshTextureCoords {
 88;
0.898280;0.414570;,
0.070650;0.123310;,
0.070650;0.414570;,
0.898280;0.123310;,
0.000000;1.000000;,
0.926820;0.000000;,
0.000000;0.000000;,
0.926820;1.000000;,
0.016370;0.862280;,
0.699120;0.738550;,
0.016370;0.738550;,
0.699120;0.862280;,
0.678810;0.598470;,
0.012870;0.477790;,
0.012870;0.598470;,
0.678810;0.477790;,
0.844830;0.444970;,
0.848790;0.954780;,
0.848790;0.444970;,
0.844830;0.954780;,
0.892450;0.415400;,
0.071300;0.120570;,
0.892450;0.120570;,
0.071300;0.415400;,
0.720830;0.440870;,
0.783350;0.953040;,
0.783350;0.440870;,
0.720830;0.953040;,
0.279850;0.093000;,
0.690460;0.093000;,
0.977660;0.953040;,
0.911780;0.440870;,
0.911780;0.953040;,
0.977660;0.440870;,
0.694700;0.096070;,
0.280840;0.096070;,
0.014600;0.724020;,
0.697350;0.704310;,
0.014600;0.704310;,
0.697350;0.724020;,
0.279850;0.040340;,
0.690460;0.040340;,
0.009330;0.464650;,
0.682050;0.446280;,
0.009330;0.446280;,
0.682050;0.464650;,
0.284730;0.096070;,
0.690810;0.044050;,
0.284730;0.044050;,
0.690810;0.096070;,
0.782100;0.440870;,
0.844610;0.953040;,
0.844610;0.440870;,
0.782100;0.953040;,
0.481190;0.007600;,
0.488080;0.007600;,
0.910520;0.953040;,
0.846770;0.440870;,
0.846770;0.953040;,
0.910520;0.440870;,
0.280840;0.044050;,
0.490720;0.011710;,
0.483780;0.011710;,
0.694700;0.044050;,
0.073640;0.414490;,
0.005300;0.337310;,
0.005300;0.414490;,
0.073640;0.310390;,
0.923470;0.919520;,
1.000000;0.827920;,
0.923470;0.827920;,
1.000000;0.919520;,
0.080480;0.999790;,
0.172080;0.741390;,
0.080480;0.741390;,
0.172080;0.999790;,
0.623540;0.600210;,
0.562540;0.568230;,
0.562540;0.600210;,
0.623540;0.568230;,
0.977890;0.487390;,
0.999750;0.534310;,
0.999750;0.487390;,
0.977890;0.534310;,
0.074270;0.415310;,
0.006470;0.337190;,
0.074270;0.309940;,
0.006470;0.415310;;
}
}
 }
