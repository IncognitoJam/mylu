.class public Lcom/microsoft/codepush/react/CodePushUpdateManager;
.super Ljava/lang/Object;
.source "CodePushUpdateManager.java"


# instance fields
.field private mDocumentsDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushUpdateManager;->mDocumentsDirectory:Ljava/lang/String;

    return-void
.end method

.method private getCodePushPath()Ljava/lang/String;
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getDocumentsDirectory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodePush"

    invoke-static {v0, v1}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->isUsingTestConfiguration()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TestPackages"

    .line 38
    invoke-static {v0, v1}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getDocumentsDirectory()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushUpdateManager;->mDocumentsDirectory:Ljava/lang/String;

    return-object v0
.end method

.method private getDownloadFilePath()Ljava/lang/String;
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCodePushPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download.zip"

    invoke-static {v0, v1}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStatusFilePath()Ljava/lang/String;
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCodePushPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "codepush.json"

    invoke-static {v0, v1}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUnzippedFolderPath()Ljava/lang/String;
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCodePushPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unzipped"

    invoke-static {v0, v1}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearUpdates()V
    .locals 1

    .line 367
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCodePushPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/codepush/react/FileUtils;->deleteDirectoryAtPath(Ljava/lang/String;)V

    return-void
.end method

.method public downloadAndReplaceCurrentBundle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error closing IO resources."

    const/4 v1, 0x0

    .line 340
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 342
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 343
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageBundlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 345
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 346
    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/high16 v5, 0x40000

    invoke-direct {v4, p2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    :try_start_4
    new-array v1, v5, [B

    :goto_0
    const/4 v6, 0x0

    .line 349
    invoke-virtual {v3, v1, v6, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_0

    .line 350
    invoke-virtual {v4, v1, v6, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 356
    :cond_0
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 357
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 358
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    if-eqz v2, :cond_1

    .line 359
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 361
    new-instance p2, Lcom/microsoft/codepush/react/CodePushUnknownException;

    invoke-direct {p2, v0, p1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v8, v2

    move-object v2, p2

    move-object p2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v8, v2

    move-object v2, p2

    move-object p2, v4

    move-object v4, v1

    :goto_1
    move-object v1, v8

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, v1

    goto :goto_5

    :catch_3
    move-exception p2

    move-object v4, v1

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object p2, v1

    move-object v3, p2

    goto :goto_5

    :catch_4
    move-exception p2

    move-object v3, v1

    move-object v4, v3

    :goto_2
    move-object v1, v2

    move-object v2, v4

    goto :goto_3

    :catchall_4
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    move-object v3, v2

    goto :goto_5

    :catch_5
    move-exception p2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 353
    :goto_3
    :try_start_6
    new-instance v5, Lcom/microsoft/codepush/react/CodePushMalformedDataException;

    invoke-direct {v5, p1, p2}, Lcom/microsoft/codepush/react/CodePushMalformedDataException;-><init>(Ljava/lang/String;Ljava/net/MalformedURLException;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception p1

    move-object p2, v2

    move-object v2, v1

    :goto_4
    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_2

    .line 356
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_6

    :catch_6
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz p2, :cond_3

    .line 357
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz v3, :cond_4

    .line 358
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    .line 359
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    .line 361
    :goto_7
    new-instance p2, Lcom/microsoft/codepush/react/CodePushUnknownException;

    invoke-direct {p2, v0, p1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 363
    :cond_5
    :goto_8
    throw p1
.end method

.method public downloadPackage(Lorg/json/JSONObject;Ljava/lang/String;Lcom/microsoft/codepush/react/DownloadProgressCallback;Ljava/lang/String;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "Error closing IO resources."

    const/4 v4, 0x0

    const-string v5, "packageHash"

    .line 145
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    .line 146
    invoke-virtual {v6, v5}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPackageFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "app.json"

    .line 147
    invoke-static {v7, v8}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 148
    invoke-static {v7}, Lcom/microsoft/codepush/react/FileUtils;->fileAtPathExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 151
    invoke-static {v7}, Lcom/microsoft/codepush/react/FileUtils;->deleteDirectoryAtPath(Ljava/lang/String;)V

    :cond_0
    const-string v9, "downloadUrl"

    .line 154
    invoke-virtual {v0, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    const-string v11, "Accept-Encoding"

    const-string v12, "identity"

    .line 166
    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 169
    :try_start_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    int-to-long v12, v12

    .line 172
    new-instance v4, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCodePushPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 174
    new-instance v14, Ljava/io/File;

    const-string v15, "download.zip"

    invoke-direct {v14, v4, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 176
    :try_start_3
    new-instance v15, Ljava/io/BufferedOutputStream;

    const/high16 v6, 0x40000

    invoke-direct {v15, v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v19, v9

    .line 177
    :try_start_4
    new-array v9, v6, [B
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v6, 0x4

    move-object/from16 v20, v3

    .line 178
    :try_start_5
    new-array v3, v6, [B

    move-object/from16 v21, v7

    const-wide/16 v6, 0x0

    :goto_0
    const/4 v0, 0x0

    move-object/from16 v17, v5

    const/high16 v5, 0x40000

    .line 181
    invoke-virtual {v11, v9, v0, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ltz v2, :cond_3

    const-wide/16 v22, 0x4

    cmp-long v18, v6, v22

    if-gez v18, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    long-to-int v0, v6

    add-int/2addr v0, v5

    move-object/from16 v22, v8

    const/4 v8, 0x4

    if-lt v0, v8, :cond_1

    goto :goto_2

    .line 189
    :cond_1
    :try_start_6
    aget-byte v16, v9, v5

    aput-byte v16, v3, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v22

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v22, v8

    const/4 v8, 0x4

    :goto_2
    int-to-long v0, v2

    add-long/2addr v6, v0

    const/4 v0, 0x0

    .line 194
    invoke-virtual {v15, v9, v0, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 195
    new-instance v0, Lcom/microsoft/codepush/react/DownloadProgress;

    invoke-direct {v0, v12, v13, v6, v7}, Lcom/microsoft/codepush/react/DownloadProgress;-><init>(JJ)V

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Lcom/microsoft/codepush/react/DownloadProgressCallback;->call(Lcom/microsoft/codepush/react/DownloadProgress;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v5, v17

    move-object/from16 v8, v22

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    move-object v4, v10

    move-object/from16 v2, v20

    goto/16 :goto_e

    :cond_3
    move-object/from16 v22, v8

    cmp-long v1, v12, v6

    if-nez v1, :cond_10

    .line 202
    :try_start_7
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const v2, 0x504b0304

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 207
    :goto_3
    :try_start_8
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 208
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 209
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    if-eqz v10, :cond_5

    .line 210
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_5
    if-eqz v1, :cond_f

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getUnzippedFolderPath()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v14, v1}, Lcom/microsoft/codepush/react/FileUtils;->unzipFile(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-static {v14}, Lcom/microsoft/codepush/react/FileUtils;->deleteFileOrFolderSilently(Ljava/io/File;)V

    const-string v2, "hotcodepush.json"

    .line 223
    invoke-static {v1, v2}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v2}, Lcom/microsoft/codepush/react/FileUtils;->fileAtPathExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageFolderPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v21

    .line 228
    invoke-static {v2, v5, v6}, Lcom/microsoft/codepush/react/CodePushUpdateUtils;->copyNecessaryFilesFromCurrentPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_6
    move-object/from16 v6, v21

    .line 233
    :goto_4
    invoke-static {v1, v6}, Lcom/microsoft/codepush/react/FileUtils;->copyDirectoryContents(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {v1}, Lcom/microsoft/codepush/react/FileUtils;->deleteFileAtPathSilently(Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 238
    invoke-static {v6, v1}, Lcom/microsoft/codepush/react/CodePushUpdateUtils;->findJSBundleInUpdateContents(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 243
    invoke-static/range {v22 .. v22}, Lcom/microsoft/codepush/react/FileUtils;->fileAtPathExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 244
    new-instance v1, Ljava/io/File;

    move-object/from16 v5, v22

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_5

    :cond_7
    move-object/from16 v5, v22

    :goto_5
    if-eqz v4, :cond_8

    const-string v1, "Applying diff update."

    .line 249
    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const-string v1, "Applying full update."

    .line 251
    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    :goto_6
    move-object/from16 v1, p4

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    .line 256
    :cond_9
    invoke-static {v6}, Lcom/microsoft/codepush/react/CodePushUpdateUtils;->getSignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v3}, Lcom/microsoft/codepush/react/FileUtils;->fileAtPathExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v0, :cond_b

    if-eqz v3, :cond_a

    move-object/from16 v0, v17

    .line 261
    invoke-static {v6, v0}, Lcom/microsoft/codepush/react/CodePushUpdateUtils;->verifyFolderHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {v6, v0, v1}, Lcom/microsoft/codepush/react/CodePushUpdateUtils;->verifyUpdateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 264
    :cond_a
    new-instance v0, Lcom/microsoft/codepush/react/CodePushInvalidUpdateException;

    const-string v1, "Error! Public key was provided but there is no JWT signature within app bundle to verify. Possible reasons, why that might happen: \n1. You\'ve been released CodePush bundle update using version of CodePush CLI that is not support code signing.\n2. You\'ve been released CodePush bundle update without providing --privateKeyPath option."

    invoke-direct {v0, v1}, Lcom/microsoft/codepush/react/CodePushInvalidUpdateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v0, v17

    if-eqz v3, :cond_c

    const-string v1, "Warning! JWT signature exists in codepush update but code integrity check couldn\'t be performed because there is no public key configured. Please ensure that public key is properly configured within your application."

    .line 273
    invoke-static {v1}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {v6, v0}, Lcom/microsoft/codepush/react/CodePushUpdateUtils;->verifyFolderHash(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    if-eqz v4, :cond_d

    .line 280
    invoke-static {v6, v0}, Lcom/microsoft/codepush/react/CodePushUpdateUtils;->verifyFolderHash(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_7
    const-string v0, "bundlePath"

    move-object/from16 v3, p1

    .line 285
    invoke-static {v3, v0, v2}, Lcom/microsoft/codepush/react/CodePushUtils;->setJSONValueForKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 241
    :cond_e
    new-instance v0, Lcom/microsoft/codepush/react/CodePushInvalidUpdateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update is invalid - A JS bundle file named \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" could not be found within the downloaded contents. Please check that you are releasing your CodePush updates using the exact same JS bundle file name that was shipped with your app\'s binary."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/codepush/react/CodePushInvalidUpdateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v6, v21

    move-object/from16 v5, v22

    .line 289
    invoke-static {v14, v6, v1}, Lcom/microsoft/codepush/react/FileUtils;->moveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_8
    invoke-static {v3, v5}, Lcom/microsoft/codepush/react/CodePushUtils;->writeJsonToFile(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 212
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUnknownException;

    move-object/from16 v2, v20

    invoke-direct {v1, v2, v0}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    move-object/from16 v2, v20

    .line 199
    :try_start_9
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUnknownException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes, expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_2
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v2, v20

    goto/16 :goto_f

    :catch_3
    move-exception v0

    move-object/from16 v2, v20

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v2, v3

    :goto_9
    move-object/from16 v16, v4

    move-object v4, v10

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v2, v3

    move-object/from16 v19, v9

    move-object/from16 v16, v4

    move-object v4, v10

    const/4 v15, 0x0

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v2, v3

    const/4 v4, 0x0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v2, v3

    move-object/from16 v19, v9

    move-object v4, v10

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v2, v3

    const/4 v4, 0x0

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v2, v3

    move-object/from16 v19, v9

    move-object v4, v10

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v2, v3

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_a
    const/4 v11, 0x0

    :goto_b
    const/4 v15, 0x0

    goto :goto_f

    :catch_8
    move-exception v0

    move-object v2, v3

    move-object/from16 v19, v9

    const/4 v4, 0x0

    :goto_c
    const/4 v11, 0x0

    :goto_d
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 204
    :goto_e
    :try_start_a
    new-instance v1, Lcom/microsoft/codepush/react/CodePushMalformedDataException;

    move-object/from16 v3, v19

    invoke-direct {v1, v3, v0}, Lcom/microsoft/codepush/react/CodePushMalformedDataException;-><init>(Ljava/lang/String;Ljava/net/MalformedURLException;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception v0

    move-object v10, v4

    move-object/from16 v4, v16

    :goto_f
    if-eqz v15, :cond_11

    .line 207
    :try_start_b
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_10

    :catch_9
    move-exception v0

    goto :goto_11

    :cond_11
    :goto_10
    if-eqz v4, :cond_12

    .line 208
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_12
    if-eqz v11, :cond_13

    .line 209
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    :cond_13
    if-eqz v10, :cond_14

    .line 210
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_12

    .line 212
    :goto_11
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUnknownException;

    invoke-direct {v1, v2, v0}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 214
    :cond_14
    :goto_12
    throw v0
.end method

.method public getCurrentPackage()Lorg/json/JSONObject;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0, v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPackage(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPackageBundlePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageFolderPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackage()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string v3, "bundlePath"

    .line 92
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 94
    invoke-static {v0, p1}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_2
    invoke-static {v0, v1}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPackageFolderPath()Ljava/lang/String;
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageInfo()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "currentPackage"

    .line 73
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPackageFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPackageHash()Ljava/lang/String;
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageInfo()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "currentPackage"

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPackageInfo()Lorg/json/JSONObject;
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getStatusFilePath()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/microsoft/codepush/react/FileUtils;->fileAtPathExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0

    .line 55
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->getJsonObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v2, "Error getting current package info"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackage(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 133
    invoke-virtual {p0, p1}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPackageFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "app.json"

    .line 134
    invoke-static {p1, v0}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushUtils;->getJsonObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCodePushPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/microsoft/codepush/react/CodePushUtils;->appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPreviousPackage()Lorg/json/JSONObject;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPreviousPackageHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPackage(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousPackageHash()Ljava/lang/String;
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageInfo()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "previousPackage"

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installPackage(Lorg/json/JSONObject;Z)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "packageHash"

    .line 297
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "currentPackage"

    .line 300
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageFolderPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 309
    invoke-static {p2}, Lcom/microsoft/codepush/react/FileUtils;->deleteDirectoryAtPath(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPreviousPackageHash()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 313
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 314
    invoke-virtual {p0, p2}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getPackageFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/codepush/react/FileUtils;->deleteDirectoryAtPath(Ljava/lang/String;)V

    .line 317
    :cond_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "previousPackage"

    invoke-static {v1, v0, p2}, Lcom/microsoft/codepush/react/CodePushUtils;->setJSONValueForKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    :cond_3
    :goto_0
    invoke-static {v1, v2, p1}, Lcom/microsoft/codepush/react/CodePushUtils;->setJSONValueForKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0, v1}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->updateCurrentPackageInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method public rollbackPackage()V
    .locals 5

    .line 325
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getCurrentPackageFolderPath()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v1}, Lcom/microsoft/codepush/react/FileUtils;->deleteDirectoryAtPath(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "previousPackage"

    .line 328
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "currentPackage"

    invoke-static {v0, v4, v3}, Lcom/microsoft/codepush/react/CodePushUtils;->setJSONValueForKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-static {v0, v2, v1}, Lcom/microsoft/codepush/react/CodePushUtils;->setJSONValueForKey(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->updateCurrentPackageInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method public updateCurrentPackageInfo(Lorg/json/JSONObject;)V
    .locals 2

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/codepush/react/CodePushUpdateManager;->getStatusFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/codepush/react/CodePushUtils;->writeJsonToFile(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 67
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v1, "Error updating current package info"

    invoke-direct {v0, v1, p1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
