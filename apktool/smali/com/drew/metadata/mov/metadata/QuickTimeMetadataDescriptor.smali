.class public Lcom/drew/metadata/mov/metadata/QuickTimeMetadataDescriptor;
.super Lcom/drew/metadata/mov/QuickTimeDescriptor;
.source "QuickTimeMetadataDescriptor.java"


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mov/QuickTimeDirectory;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/drew/metadata/mov/QuickTimeDescriptor;-><init>(Lcom/drew/metadata/mov/QuickTimeDirectory;)V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/drew/metadata/mov/QuickTimeDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
