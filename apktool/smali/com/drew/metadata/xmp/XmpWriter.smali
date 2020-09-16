.class public Lcom/drew/metadata/xmp/XmpWriter;
.super Ljava/lang/Object;
.source "XmpWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/drew/metadata/Metadata;)Z
    .locals 3

    .line 21
    const-class v0, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object p1

    check-cast p1, Lcom/drew/metadata/xmp/XmpDirectory;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/drew/metadata/xmp/XmpDirectory;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object p1

    .line 27
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    move-result-object v1

    .line 28
    invoke-static {p1, p0, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serialize(Lcom/adobe/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    return v0
.end method
