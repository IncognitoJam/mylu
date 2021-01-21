.class public Lcom/drew/metadata/mov/QuickTimeAtomTypes;
.super Ljava/lang/Object;
.source "QuickTimeAtomTypes.java"


# static fields
.field public static final ATOM_BASE_MEDIA_INFO:Ljava/lang/String; = "gmhd"

.field public static final ATOM_DATA:Ljava/lang/String; = "data"

.field public static final ATOM_FILE_TYPE:Ljava/lang/String; = "ftyp"

.field public static final ATOM_HANDLER:Ljava/lang/String; = "hdlr"

.field public static final ATOM_KEYS:Ljava/lang/String; = "keys"

.field public static final ATOM_MEDIA_HEADER:Ljava/lang/String; = "mdhd"

.field public static final ATOM_MOVIE_HEADER:Ljava/lang/String; = "mvhd"

.field public static final ATOM_SAMPLE_DESCRIPTION:Ljava/lang/String; = "stsd"

.field public static final ATOM_SOUND_MEDIA_INFO:Ljava/lang/String; = "smhd"

.field public static final ATOM_TIMECODE_MEDIA_INFO:Ljava/lang/String; = "tcmi"

.field public static final ATOM_TIME_TO_SAMPLE:Ljava/lang/String; = "stts"

.field public static final ATOM_VIDEO_MEDIA_INFO:Ljava/lang/String; = "vmhd"

.field public static _atomList:Ljava/util/ArrayList;
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

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    .line 46
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string v1, "ftyp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string v1, "mvhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string/jumbo v1, "vmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string/jumbo v1, "smhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string v1, "gmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string/jumbo v1, "tcmi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string v1, "hdlr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string v1, "keys"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string/jumbo v1, "stsd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

    const-string/jumbo v1, "stts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeAtomTypes;->_atomList:Ljava/util/ArrayList;

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
