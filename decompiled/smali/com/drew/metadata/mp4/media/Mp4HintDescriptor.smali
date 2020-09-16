.class public Lcom/drew/metadata/mp4/media/Mp4HintDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "Mp4HintDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/mp4/media/Mp4HintDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mp4/media/Mp4HintDirectory;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method
