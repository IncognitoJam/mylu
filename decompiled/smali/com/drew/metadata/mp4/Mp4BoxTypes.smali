.class public Lcom/drew/metadata/mp4/Mp4BoxTypes;
.super Ljava/lang/Object;
.source "Mp4BoxTypes.java"


# static fields
.field public static final BOX_FILE_TYPE:Ljava/lang/String; = "ftyp"

.field public static final BOX_HANDLER:Ljava/lang/String; = "hdlr"

.field public static final BOX_HINT_MEDIA_INFO:Ljava/lang/String; = "hmhd"

.field public static final BOX_MEDIA_HEADER:Ljava/lang/String; = "mdhd"

.field public static final BOX_MOVIE_HEADER:Ljava/lang/String; = "mvhd"

.field public static final BOX_NULL_MEDIA_INFO:Ljava/lang/String; = "nmhd"

.field public static final BOX_SAMPLE_DESCRIPTION:Ljava/lang/String; = "stsd"

.field public static final BOX_SOUND_MEDIA_INFO:Ljava/lang/String; = "smhd"

.field public static final BOX_TIME_TO_SAMPLE:Ljava/lang/String; = "stts"

.field public static final BOX_VIDEO_MEDIA_INFO:Ljava/lang/String; = "vmhd"

.field public static _boxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    .line 44
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string v1, "ftyp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string v1, "mvhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string/jumbo v1, "vmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string/jumbo v1, "smhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string v1, "hmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string v1, "nmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string v1, "hdlr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string/jumbo v1, "stsd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string/jumbo v1, "stts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/drew/metadata/mp4/Mp4BoxTypes;->_boxList:Ljava/util/ArrayList;

    const-string v1, "mdhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
