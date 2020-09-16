.class public Lcom/drew/metadata/mp4/Mp4HandlerFactory;
.super Ljava/lang/Object;
.source "Mp4HandlerFactory.java"


# static fields
.field private static final HANDLER_HINT_MEDIA:Ljava/lang/String; = "hint"

.field private static final HANDLER_META_MEDIA:Ljava/lang/String; = "meta"

.field public static HANDLER_PARAM_CREATION_TIME:Ljava/lang/Long; = null

.field public static HANDLER_PARAM_DURATION:Ljava/lang/Long; = null

.field public static HANDLER_PARAM_LANGUAGE:Ljava/lang/String; = null

.field public static HANDLER_PARAM_MODIFICATION_TIME:Ljava/lang/Long; = null

.field public static HANDLER_PARAM_TIME_SCALE:Ljava/lang/Long; = null

.field private static final HANDLER_SOUND_MEDIA:Ljava/lang/String; = "soun"

.field private static final HANDLER_TEXT_MEDIA:Ljava/lang/String; = "text"

.field private static final HANDLER_VIDEO_MEDIA:Ljava/lang/String; = "vide"


# instance fields
.field private caller:Lcom/drew/imaging/mp4/Mp4Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/drew/imaging/mp4/Mp4Handler;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->caller:Lcom/drew/imaging/mp4/Mp4Handler;

    return-void
.end method


# virtual methods
.method public getHandler(Lcom/drew/metadata/mp4/boxes/HandlerBox;Lcom/drew/metadata/Metadata;)Lcom/drew/imaging/mp4/Mp4Handler;
    .locals 1

    .line 51
    invoke-virtual {p1}, Lcom/drew/metadata/mp4/boxes/HandlerBox;->getHandlerType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "soun"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance p1, Lcom/drew/metadata/mp4/media/Mp4SoundHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mp4/media/Mp4SoundHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "vide"

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance p1, Lcom/drew/metadata/mp4/media/Mp4VideoHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mp4/media/Mp4VideoHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_1
    const-string v0, "hint"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance p1, Lcom/drew/metadata/mp4/media/Mp4HintHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mp4/media/Mp4HintHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_2
    const-string/jumbo v0, "text"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    new-instance p1, Lcom/drew/metadata/mp4/media/Mp4TextHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mp4/media/Mp4TextHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    :cond_3
    const-string v0, "meta"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 61
    new-instance p1, Lcom/drew/metadata/mp4/media/Mp4MetaHandler;

    invoke-direct {p1, p2}, Lcom/drew/metadata/mp4/media/Mp4MetaHandler;-><init>(Lcom/drew/metadata/Metadata;)V

    return-object p1

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/drew/metadata/mp4/Mp4HandlerFactory;->caller:Lcom/drew/imaging/mp4/Mp4Handler;

    return-object p1
.end method
