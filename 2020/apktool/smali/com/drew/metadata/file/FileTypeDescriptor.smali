.class public Lcom/drew/metadata/file/FileTypeDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "FileTypeDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/file/FileTypeDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/file/FileTypeDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/file/FileTypeDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method
