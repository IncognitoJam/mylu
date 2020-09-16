.class public Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;
.super Lcom/drew/metadata/mov/QuickTimeDirectory;
.source "QuickTimeSoundDirectory.java"


# static fields
.field public static final TAG_AUDIO_FORMAT:I = 0x301

.field public static final TAG_AUDIO_SAMPLE_RATE:I = 0x304

.field public static final TAG_AUDIO_SAMPLE_SIZE:I = 0x303

.field public static final TAG_NUMBER_OF_CHANNELS:I = 0x302

.field public static final TAG_SOUND_BALANCE:I = 0x305

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

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 51
    sget-object v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/drew/metadata/mov/media/QuickTimeMediaDirectory;->addQuickTimeMediaTags(Ljava/util/HashMap;)V

    .line 52
    sget-object v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Format"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x302

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Number of Channels"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x303

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sample Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x304

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sample Rate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x305

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/drew/metadata/mov/QuickTimeDirectory;-><init>()V

    .line 43
    new-instance v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/mov/media/QuickTimeSoundDescriptor;-><init>(Lcom/drew/metadata/mov/QuickTimeDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    const-string v0, "QuickTime Sound"

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

    .line 70
    sget-object v0, Lcom/drew/metadata/mov/media/QuickTimeSoundDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
