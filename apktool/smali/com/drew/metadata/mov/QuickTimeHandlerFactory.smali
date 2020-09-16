.class public Lcom/drew/metadata/mov/QuickTimeHandlerFactory;
.super Ljava/lang/Object;
.source "QuickTimeHandlerFactory.java"


# static fields
.field private static final HANDLER_METADATA_DATA:Ljava/lang/String; = "mdta"

.field private static final HANDLER_METADATA_DIRECTORY:Ljava/lang/String; = "mdir"

.field private static final HANDLER_MUSIC_MEDIA:Ljava/lang/String; = "musi"

.field public static HANDLER_PARAM_CREATION_TIME:Ljava/lang/Long; = null

.field public static HANDLER_PARAM_DURATION:Ljava/lang/Long; = null

.field public static HANDLER_PARAM_MODIFICATION_TIME:Ljava/lang/Long; = null

.field public static HANDLER_PARAM_TIME_SCALE:Ljava/lang/Long; = null

.field private static final HANDLER_SOUND_MEDIA:Ljava/lang/String; = "soun"

.field private static final HANDLER_SUBTITLE_MEDIA:Ljava/lang/String; = "sbtl"

.field private static final HANDLER_TEXT_MEDIA:Ljava/lang/String; = "text"

.field private static final HANDLER_TIMECODE_MEDIA:Ljava/lang/String; = "tmcd"

.field private static final HANDLER_VIDEO_MEDIA:Ljava/lang/String; = "vide"


# instance fields
.field private caller:Lcom/drew/imaging/quicktime/QuickTimeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/drew/imaging/quicktime/QuickTimeHandler;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;->caller:Lcom/drew/imaging/quicktime/QuickTimeHandler;

    return-void
.end method


# virtual methods
.method public getHandler(Ljava/lang/String;Lcom/drew/metadata/Metadata;)Lcom/drew/imaging/quicktime/QuickTimeHandler;
    .locals 1

    const-string v0, "mdir"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance p1, Lcom/drew/metadata/mov/metadata/QuickTimeDirectoryHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mov/metadata/QuickTimeDirectoryHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_0
    const-string v0, "mdta"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    new-instance p1, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mov/metadata/QuickTimeDataHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_1
    const-string/jumbo v0, "soun"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    new-instance p1, Lcom/drew/metadata/mov/media/QuickTimeSoundHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mov/media/QuickTimeSoundHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_2
    const-string/jumbo v0, "vide"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    new-instance p1, Lcom/drew/metadata/mov/media/QuickTimeVideoHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mov/media/QuickTimeVideoHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_3
    const-string/jumbo v0, "tmcd"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    new-instance p1, Lcom/drew/metadata/mov/media/QuickTimeTimecodeHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mov/media/QuickTimeTimecodeHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_4
    const-string/jumbo v0, "text"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    new-instance p1, Lcom/drew/metadata/mov/media/QuickTimeTextHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mov/media/QuickTimeTextHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_5
    const-string v0, "sbtl"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    new-instance p1, Lcom/drew/metadata/mov/media/QuickTimeSubtitleHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mov/media/QuickTimeSubtitleHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_6
    const-string v0, "musi"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 72
    new-instance p1, Lcom/drew/metadata/mov/media/QuickTimeMusicHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mov/media/QuickTimeMusicHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    .line 74
    :cond_7
    iget-object p1, p0, Lcom/drew/metadata/mov/QuickTimeHandlerFactory;->caller:Lcom/drew/imaging/quicktime/QuickTimeHandler;

    return-object p1
.end method
