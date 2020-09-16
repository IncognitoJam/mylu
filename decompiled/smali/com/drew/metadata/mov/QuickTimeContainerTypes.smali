.class public Lcom/drew/metadata/mov/QuickTimeContainerTypes;
.super Ljava/lang/Object;
.source "QuickTimeContainerTypes.java"


# static fields
.field public static final ATOM_COMPRESSED_MOVIE:Ljava/lang/String; = "cmov"

.field public static final ATOM_MEDIA:Ljava/lang/String; = "mdia"

.field public static final ATOM_MEDIA_BASE:Ljava/lang/String; = "gmhd"

.field public static final ATOM_MEDIA_INFORMATION:Ljava/lang/String; = "minf"

.field public static final ATOM_MEDIA_SUBTITLE:Ljava/lang/String; = "sbtl"

.field public static final ATOM_MEDIA_TEXT:Ljava/lang/String; = "text"

.field public static final ATOM_METADATA:Ljava/lang/String; = "meta"

.field public static final ATOM_METADATA_LIST:Ljava/lang/String; = "ilst"

.field public static final ATOM_MOVIE:Ljava/lang/String; = "moov"

.field public static final ATOM_SAMPLE_TABLE:Ljava/lang/String; = "stbl"

.field public static final ATOM_TRACK:Ljava/lang/String; = "trak"

.field public static final ATOM_USER_DATA:Ljava/lang/String; = "udta"

.field public static _containerList:Ljava/util/ArrayList;
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

    sput-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    .line 46
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string v1, "moov"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string/jumbo v1, "udta"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string/jumbo v1, "trak"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string v1, "mdia"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string v1, "minf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string/jumbo v1, "stbl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string v1, "ilst"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string v1, "cmov"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string v1, "sbtl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/drew/metadata/mov/QuickTimeContainerTypes;->_containerList:Ljava/util/ArrayList;

    const-string v1, "gmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
