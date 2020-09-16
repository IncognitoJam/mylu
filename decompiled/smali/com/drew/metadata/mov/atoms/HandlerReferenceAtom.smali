.class public Lcom/drew/metadata/mov/atoms/HandlerReferenceAtom;
.super Lcom/drew/metadata/mov/atoms/FullAtom;
.source "HandlerReferenceAtom.java"


# instance fields
.field componentName:Ljava/lang/String;

.field componentSubtype:Ljava/lang/String;

.field componentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mov/atoms/FullAtom;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mov/atoms/Atom;)V

    const/4 p2, 0x4

    .line 47
    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/drew/metadata/mov/atoms/HandlerReferenceAtom;->componentType:Ljava/lang/String;

    .line 48
    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/drew/metadata/mov/atoms/HandlerReferenceAtom;->componentSubtype:Ljava/lang/String;

    const-wide/16 v0, 0x4

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 52
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt8()S

    move-result p2

    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/drew/metadata/mov/atoms/HandlerReferenceAtom;->componentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getComponentType()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/drew/metadata/mov/atoms/HandlerReferenceAtom;->componentSubtype:Ljava/lang/String;

    return-object v0
.end method
