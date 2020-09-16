.class public Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;
.super Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;
.source "Mp4SoundDirectory.java"


# static fields
.field public static final TAG_AUDIO_FORMAT:I = 0x65

.field public static final TAG_AUDIO_SAMPLE_RATE:I = 0x68

.field public static final TAG_AUDIO_SAMPLE_SIZE:I = 0x67

.field public static final TAG_NUMBER_OF_CHANNELS:I = 0x66

.field public static final TAG_SOUND_BALANCE:I = 0x69

.field protected static final _tagNameMap:Ljava/util/HashMap;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;->addMp4MediaTags(Ljava/util/HashMap;)V

    .line 48
    sget-object v0, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Format"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Number of Channels"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sample Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sample Rate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;-><init>()V

    .line 39
    new-instance v0, Lcom/drew/metadata/mp4/media/Mp4SoundDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/mp4/media/Mp4SoundDescriptor;-><init>(Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const-string v0, "MP4 Sound"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/drew/metadata/mp4/media/Mp4SoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
