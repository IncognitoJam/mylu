.class Lcom/drew/metadata/mov/atoms/MusicSampleDescriptionAtom$MusicSampleDescription;
.super Lcom/drew/metadata/mov/atoms/SampleDescription;
.source "MusicSampleDescriptionAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/mov/atoms/MusicSampleDescriptionAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicSampleDescription"
.end annotation


# instance fields
.field flags:J

.field final synthetic this$0:Lcom/drew/metadata/mov/atoms/MusicSampleDescriptionAtom;


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mov/atoms/MusicSampleDescriptionAtom;Lcom/drew/lang/SequentialReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/MusicSampleDescriptionAtom$MusicSampleDescription;->this$0:Lcom/drew/metadata/mov/atoms/MusicSampleDescriptionAtom;

    .line 57
    invoke-direct {p0, p2}, Lcom/drew/metadata/mov/atoms/SampleDescription;-><init>(Lcom/drew/lang/SequentialReader;)V

    .line 59
    invoke-virtual {p2}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/drew/metadata/mov/atoms/MusicSampleDescriptionAtom$MusicSampleDescription;->flags:J

    return-void
.end method
