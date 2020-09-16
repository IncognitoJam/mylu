.class public Lcom/drew/metadata/mp4/media/Mp4MetaDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "Mp4MetaDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/mp4/media/Mp4MetaDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mp4/media/Mp4MetaDirectory;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method
