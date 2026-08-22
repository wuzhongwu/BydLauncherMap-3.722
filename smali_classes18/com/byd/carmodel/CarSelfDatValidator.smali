.class final Lcom/byd/carmodel/CarSelfDatValidator;
.super Ljava/lang/Object;
.source "CarSelfDatValidator.java"


# static fields
.field private static final HEADER_SIZE:I = 0x74


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ascii([BII)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ltz p1, :cond_14

    if-ltz p2, :cond_14

    .line 162
    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_14

    .line 165
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 163
    :cond_14
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "STRING_BOUNDS"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static trimPadding(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    if-lez v0, :cond_16

    add-int/lit8 v1, v0, -0x1

    .line 171
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_13

    const/16 v2, 0x20

    if-eq v1, v2, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_16
    :goto_16
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static u32([BI)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ltz p1, :cond_2c

    .line 152
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    if-gt p1, v0, :cond_2c

    .line 155
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0

    .line 153
    :cond_2c
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "INTEGER_BOUNDS"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validate([B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_b2

    .line 19
    array-length v0, p0

    const/16 v1, 0x8c

    if-lt v0, v1, :cond_b2

    const/4 v0, 0x4

    .line 22
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf6

    if-ne v1, v2, :cond_aa

    const/4 v1, 0x5

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x84

    if-ne v2, v3, :cond_aa

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v1, :cond_aa

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8f

    if-ne v1, v2, :cond_aa

    const/16 v1, 0x44

    const/16 v2, 0x8

    .line 26
    invoke-static {p0, v1, v2}, Lcom/byd/carmodel/CarSelfDatValidator;->ascii([BII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw_gltf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    const/16 v1, 0xc

    .line 29
    invoke-static {p0, v1}, Lcom/byd/carmodel/CarSelfDatValidator;->u32([BI)J

    move-result-wide v1

    const/16 v3, 0x70

    .line 30
    invoke-static {p0, v3}, Lcom/byd/carmodel/CarSelfDatValidator;->u32([BI)J

    move-result-wide v3

    .line 31
    array-length v5, p0

    int-to-long v5, v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_9a

    array-length v1, p0

    const/16 v2, 0x74

    sub-int/2addr v1, v2

    int-to-long v5, v1

    const-wide/16 v7, 0x4

    sub-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-nez v1, :cond_9a

    const/16 v1, 0x64

    .line 32
    invoke-static {p0, v1}, Lcom/byd/carmodel/CarSelfDatValidator;->u32([BI)J

    move-result-wide v5

    const-wide/16 v7, 0x5c

    add-long/2addr v7, v3

    cmp-long v1, v5, v7

    if-nez v1, :cond_9a

    const/16 v1, 0x6c

    .line 33
    invoke-static {p0, v1}, Lcom/byd/carmodel/CarSelfDatValidator;->u32([BI)J

    move-result-wide v5

    const-wide/16 v7, 0x10

    add-long/2addr v7, v3

    cmp-long v1, v5, v7

    if-nez v1, :cond_9a

    .line 36
    array-length v1, p0

    sub-int/2addr v1, v0

    .line 37
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0xb

    if-ne v0, v5, :cond_92

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_92

    add-int/lit8 v0, v1, 0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_92

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, p0, v1

    if-nez v0, :cond_92

    long-to-int v0, v3

    .line 41
    invoke-static {p0, v2, v0}, Lcom/byd/carmodel/CarSelfDatValidator;->validateGlb([BII)V

    return-void

    .line 39
    :cond_92
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "DAT_TAIL_INVALID"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_9a
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "DAT_LENGTH_INVALID"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_a2
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "DAT_TYPE_INVALID"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_aa
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "DAT_MAGIC_INVALID"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_b2
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "DAT_TOO_SHORT"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateGlb([BII)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x4

    .line 45
    invoke-static {v0, v1, v3}, Lcom/byd/carmodel/CarSelfDatValidator;->ascii([BII)Ljava/lang/String;

    move-result-object v4

    const-string v5, "glTF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bf

    add-int/lit8 v4, v1, 0x4

    invoke-static {v0, v4}, Lcom/byd/carmodel/CarSelfDatValidator;->u32([BI)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-nez v4, :cond_1bf

    add-int/lit8 v4, v1, 0x8

    .line 46
    invoke-static {v0, v4}, Lcom/byd/carmodel/CarSelfDatValidator;->u32([BI)J

    move-result-wide v4

    int-to-long v6, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_1bf

    add-int/2addr v2, v1

    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v4, v1, 0x8

    if-gt v4, v2, :cond_1b7

    .line 54
    invoke-static {v0, v1}, Lcom/byd/carmodel/CarSelfDatValidator;->u32([BI)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1af

    const-wide/32 v9, 0x7fffffff

    cmp-long v11, v5, v9

    if-gtz v11, :cond_1af

    const-wide/16 v11, 0x3

    and-long v13, v5, v11

    cmp-long v13, v13, v7

    if-nez v13, :cond_1af

    add-int/2addr v1, v3

    .line 56
    invoke-static {v0, v1, v3}, Lcom/byd/carmodel/CarSelfDatValidator;->ascii([BII)Ljava/lang/String;

    move-result-object v1

    const-string v13, "JSON"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    long-to-int v1, v5

    sub-int v5, v2, v1

    if-gt v4, v5, :cond_1a7

    .line 64
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v0, v4, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 65
    invoke-static {v5}, Lcom/byd/carmodel/CarSelfDatValidator;->trimPadding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "asset"

    .line 67
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_19f

    const-string v13, "version"

    .line 68
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "2.0"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19f

    const-string v5, "scenes"

    .line 71
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v13, "nodes"

    .line 72
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const-string v15, "meshes"

    .line 73
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v5, :cond_197

    .line 74
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_197

    if-eqz v14, :cond_197

    if-eqz v15, :cond_197

    .line 75
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-eqz v9, :cond_197

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-eqz v9, :cond_197

    const-string v9, "scene"

    const/4 v15, -0x1

    .line 78
    invoke-virtual {v6, v9, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_18f

    const-string v9, "extensionsRequired"

    .line 81
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_d1

    .line 82
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-gtz v9, :cond_c9

    goto :goto_d1

    .line 83
    :cond_c9
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLTF_EXTENSION_UNSUPPORTED"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d1
    :goto_d1
    const-string v9, "images"

    .line 85
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v9, 0x0

    if-eqz v6, :cond_100

    move v3, v9

    .line 87
    :goto_db
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_100

    .line 88
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "uri"

    .line 89
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f8

    const-string v8, "bufferView"

    invoke-virtual {v7, v8, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_f8

    add-int/lit8 v3, v3, 0x1

    goto :goto_db

    .line 90
    :cond_f8
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLTF_EXTERNAL_IMAGE"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_100
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [I

    new-array v6, v10, [I

    .line 96
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_187

    .line 97
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_187

    move v7, v9

    .line 100
    :goto_119
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_129

    .line 101
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-static {v8, v14, v3, v6}, Lcom/byd/carmodel/CarSelfDatValidator;->walkNode(ILorg/json/JSONArray;[I[I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_119

    :cond_129
    aget v3, v6, v9

    if-ne v3, v10, :cond_17f

    add-int/2addr v4, v1

    if-ge v4, v2, :cond_174

    add-int/lit8 v1, v4, 0x8

    const-string v3, "GLB_BIN_INVALID"

    if-gt v1, v2, :cond_16e

    .line 111
    invoke-static {v0, v4}, Lcom/byd/carmodel/CarSelfDatValidator;->u32([BI)J

    move-result-wide v5

    and-long v7, v5, v11

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_168

    add-int/lit8 v4, v4, 0x4

    const/4 v7, 0x4

    .line 112
    invoke-static {v0, v4, v7}, Lcom/byd/carmodel/CarSelfDatValidator;->ascii([BII)Ljava/lang/String;

    move-result-object v0

    const-string v4, "BIN\u0000"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v5, v7

    if-gtz v0, :cond_160

    long-to-int v0, v5

    sub-int v3, v2, v0

    if-gt v1, v3, :cond_160

    add-int v4, v1, v0

    goto :goto_174

    .line 117
    :cond_160
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLB_BIN_BOUNDS"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_168
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_16e
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_174
    :goto_174
    if-ne v4, v2, :cond_177

    return-void

    .line 122
    :cond_177
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLB_TRAILING_DATA"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_17f
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "CS_CAR_MISSING"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_187
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLTF_SCENE_EMPTY"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_18f
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLTF_SCENE_INVALID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_197
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLTF_STRUCTURE_INVALID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_19f
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLTF_VERSION_INVALID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1a7
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLB_JSON_BOUNDS"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1af
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLB_JSON_INVALID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1b7
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLB_CHUNK_INVALID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1bf
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLB_HEADER_INVALID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static walkNode(ILorg/json/JSONArray;[I[I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ltz p0, :cond_4e

    .line 128
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p0, v0, :cond_4e

    .line 131
    aget v0, p2, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    return-void

    .line 137
    :cond_11
    aput v1, p2, p0

    .line 138
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "name"

    .line 139
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CS_Car"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2b

    .line 140
    aget v3, p3, v4

    add-int/2addr v3, v1

    aput v3, p3, v4

    :cond_2b
    const-string v1, "children"

    .line 142
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 144
    :goto_33
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_43

    .line 145
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-static {v1, p1, p2, p3}, Lcom/byd/carmodel/CarSelfDatValidator;->walkNode(ILorg/json/JSONArray;[I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 148
    :cond_43
    aput v2, p2, p0

    return-void

    .line 132
    :cond_46
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "GLTF_NODE_CYCLE"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_4e
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "GLTF_NODE_INDEX"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
