.class public final Lcom/drew/metadata/iptc/Iso2022Converter;
.super Ljava/lang/Object;
.source "Iso2022Converter.java"


# static fields
.field private static final DOT:I = 0xe280a2

.field private static final ESC:B = 0x1bt

.field private static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field private static final LATIN_CAPITAL_A:B = 0x41t

.field private static final LATIN_CAPITAL_G:B = 0x47t

.field private static final PERCENT_SIGN:B = 0x25t

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertISO2022CharsetToJavaCharset([B)Ljava/lang/String;
    .locals 6
    .param p0    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 51
    array-length v0, p0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    aget-byte v0, p0, v3

    if-ne v0, v2, :cond_0

    aget-byte v0, p0, v1

    const/16 v5, 0x25

    if-ne v0, v5, :cond_0

    aget-byte v0, p0, v4

    const/16 v5, 0x47

    if-ne v0, v5, :cond_0

    const-string p0, "UTF-8"

    return-object p0

    .line 54
    :cond_0
    array-length v0, p0

    const/4 v5, 0x3

    if-le v0, v5, :cond_1

    aget-byte v0, p0, v3

    if-ne v0, v2, :cond_1

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const v1, 0xe280a2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    aget-byte p0, p0, v0

    const/16 v0, 0x41

    if-ne p0, v0, :cond_1

    const-string p0, "ISO-8859-1"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static guessCharSet([B)Ljava/nio/charset/Charset;
    .locals 6
    .param p0    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 83
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    const-string v2, "file.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v3, "ISO-8859-1"

    aput-object v3, v0, v2

    .line 85
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 87
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    .line 91
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
