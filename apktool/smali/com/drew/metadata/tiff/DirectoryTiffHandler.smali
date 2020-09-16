.class public abstract Lcom/drew/metadata/tiff/DirectoryTiffHandler;
.super Ljava/lang/Object;
.source "DirectoryTiffHandler.java"

# interfaces
.implements Lcom/drew/imaging/tiff/TiffHandler;


# instance fields
.field protected _currentDirectory:Lcom/drew/metadata/Directory;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field private final _directoryStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/drew/metadata/Directory;",
            ">;"
        }
    .end annotation
.end field

.field protected final _metadata:Lcom/drew/metadata/Metadata;

.field private _rootParentDirectory:Lcom/drew/metadata/Directory;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V
    .locals 1
    .param p2    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_directoryStack:Ljava/util/Stack;

    .line 49
    iput-object p1, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    .line 50
    iput-object p2, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_rootParentDirectory:Lcom/drew/metadata/Directory;

    return-void
.end method

.method private getCurrentOrErrorDirectory()Lcom/drew/metadata/Directory;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    if-eqz v0, :cond_0

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v1, Lcom/drew/metadata/ErrorDirectory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/ErrorDirectory;

    if-eqz v0, :cond_1

    return-object v0

    .line 106
    :cond_1
    const-class v0, Lcom/drew/metadata/ErrorDirectory;

    invoke-virtual {p0, v0}, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 107
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    return-object v0
.end method


# virtual methods
.method public endingIFD()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_directoryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_directoryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/Directory;

    :goto_0
    iput-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0}, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->getCurrentOrErrorDirectory()Lcom/drew/metadata/Directory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    return-void
.end method

.method protected pushDirectory(Ljava/lang/Class;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/drew/metadata/Directory;",
            ">;)V"
        }
    .end annotation

    .line 63
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/drew/metadata/Directory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_rootParentDirectory:Lcom/drew/metadata/Directory;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1, v0}, Lcom/drew/metadata/Directory;->setParent(Lcom/drew/metadata/Directory;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_rootParentDirectory:Lcom/drew/metadata/Directory;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_directoryStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {p1, v0}, Lcom/drew/metadata/Directory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 84
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    .line 85
    iget-object p1, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-void

    :catch_0
    move-exception p1

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setByteArray(I[B)V
    .locals 1
    .param p2    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 112
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setByteArray(I[B)V

    return-void
.end method

.method public setDouble(ID)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/drew/metadata/Directory;->setDouble(ID)V

    return-void
.end method

.method public setDoubleArray(I[D)V
    .locals 1
    .param p2    # [D
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 147
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setDoubleArray(I[D)V

    return-void
.end method

.method public setFloat(IF)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setFloat(IF)V

    return-void
.end method

.method public setFloatArray(I[F)V
    .locals 1
    .param p2    # [F
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 137
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setFloatArray(I[F)V

    return-void
.end method

.method public setInt16s(II)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    return-void
.end method

.method public setInt16sArray(I[S)V
    .locals 1
    .param p2    # [S
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 183
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setInt16u(II)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    return-void
.end method

.method public setInt16uArray(I[I)V
    .locals 1
    .param p2    # [I
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 195
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setInt32s(II)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    return-void
.end method

.method public setInt32sArray(I[I)V
    .locals 1
    .param p2    # [I
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 205
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setIntArray(I[I)V

    return-void
.end method

.method public setInt32u(IJ)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/drew/metadata/Directory;->setLong(IJ)V

    return-void
.end method

.method public setInt32uArray(I[J)V
    .locals 1
    .param p2    # [J
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 216
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setInt8s(IB)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    return-void
.end method

.method public setInt8sArray(I[B)V
    .locals 1
    .param p2    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 159
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setByteArray(I[B)V

    return-void
.end method

.method public setInt8u(IS)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    return-void
.end method

.method public setInt8uArray(I[S)V
    .locals 1
    .param p2    # [S
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 171
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setRational(ILcom/drew/lang/Rational;)V
    .locals 1
    .param p2    # Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 122
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setRational(ILcom/drew/lang/Rational;)V

    return-void
.end method

.method public setRationalArray(I[Lcom/drew/lang/Rational;)V
    .locals 1
    .param p2    # [Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 127
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setRationalArray(I[Lcom/drew/lang/Rational;)V

    return-void
.end method

.method public setString(ILcom/drew/metadata/StringValue;)V
    .locals 1
    .param p2    # Lcom/drew/metadata/StringValue;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 117
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0}, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->getCurrentOrErrorDirectory()Lcom/drew/metadata/Directory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    return-void
.end method
