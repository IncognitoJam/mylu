.class Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;
.super Ljava/lang/Object;
.source "TimeToSampleBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryCount"
.end annotation


# instance fields
.field sampleCount:J

.field sampleDelta:J

.field final synthetic this$0:Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;


# direct methods
.method public constructor <init>(Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;JJ)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;->this$0:Lcom/drew/metadata/mp4/boxes/TimeToSampleBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p2, p0, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;->sampleCount:J

    .line 69
    iput-wide p4, p0, Lcom/drew/metadata/mp4/boxes/TimeToSampleBox$EntryCount;->sampleDelta:J

    return-void
.end method
