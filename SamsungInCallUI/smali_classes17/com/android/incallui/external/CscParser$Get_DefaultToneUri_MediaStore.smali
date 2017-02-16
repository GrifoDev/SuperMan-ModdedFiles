.class public Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;
.super Ljava/lang/Object;
.source "CscParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/external/CscParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Get_DefaultToneUri_MediaStore"
.end annotation


# instance fields
.field private MediaStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/external/CscParser;


# direct methods
.method private constructor <init>(Lcom/android/incallui/external/CscParser;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/external/CscParser;
    .param p2, "MediaStr"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->this$0:Lcom/android/incallui/external/CscParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p2, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->MediaStr:Ljava/lang/String;

    .line 421
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/external/CscParser;Ljava/lang/String;Lcom/android/incallui/external/CscParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/external/CscParser;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/incallui/external/CscParser$1;

    .prologue
    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;-><init>(Lcom/android/incallui/external/CscParser;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 424
    new-instance v2, Landroid/media/RingtoneManager;

    iget-object v6, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->this$0:Lcom/android/incallui/external/CscParser;

    # getter for: Lcom/android/incallui/external/CscParser;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/incallui/external/CscParser;->access$100(Lcom/android/incallui/external/CscParser;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 428
    .local v2, "rm":Landroid/media/RingtoneManager;
    # getter for: Lcom/android/incallui/external/CscParser;->Media_Type:I
    invoke-static {}, Lcom/android/incallui/external/CscParser;->access$200()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/media/RingtoneManager;->setType(I)V

    .line 430
    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 431
    .local v0, "c":Landroid/database/Cursor;
    const-string v6, "title"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 432
    .local v4, "titleIndex":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 434
    const-string v6, "CscParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetMediaStore run : MediaStr =>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->MediaStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, "position":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 437
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "title":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    iget-object v6, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->MediaStr:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    const-string v6, "CscParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetMediaStore run : position =>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-le v1, v6, :cond_3

    .line 449
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->this$0:Lcom/android/incallui/external/CscParser;

    # getter for: Lcom/android/incallui/external/CscParser;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/incallui/external/CscParser;->access$300(Lcom/android/incallui/external/CscParser;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, p0, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 456
    :goto_1
    return-void

    .line 443
    .restart local v3    # "title":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 444
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 452
    .end local v3    # "title":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 453
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "CscParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetMediaStore run : uri =>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    # setter for: Lcom/android/incallui/external/CscParser;->value_uri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/incallui/external/CscParser;->access$402(Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_1
.end method
