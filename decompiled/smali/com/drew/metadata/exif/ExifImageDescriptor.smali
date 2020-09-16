.class public Lcom/drew/metadata/exif/ExifImageDescriptor;
.super Lcom/drew/metadata/exif/ExifDescriptorBase;
.source "ExifImageDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/exif/ExifDescriptorBase<",
        "Lcom/drew/metadata/exif/ExifImageDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/ExifImageDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/ExifImageDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1}, Lcom/drew/metadata/exif/ExifDescriptorBase;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method
