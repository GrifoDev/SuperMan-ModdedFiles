.class public Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->this$0:Lcom/android/incallui/external/CscParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->MediaStr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/external/CscParser;Ljava/lang/String;Lcom/android/incallui/external/CscParser$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;-><init>(Lcom/android/incallui/external/CscParser;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v1, Landroid/media/RingtoneManager;

    iget-object v0, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->this$0:Lcom/android/incallui/external/CscParser;

    invoke-static {v0}, Lcom/android/incallui/external/CscParser;->access$100(Lcom/android/incallui/external/CscParser;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/external/CscParser;->access$200()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/RingtoneManager;->setType(I)V

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    const-string v0, "title"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "CscParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetMediaStore run : MediaStr =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->MediaStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->MediaStr:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v3, "CscParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetMediaStore run : position =>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v0, v2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/external/CscParser$Get_DefaultToneUri_MediaStore;->this$0:Lcom/android/incallui/external/CscParser;

    invoke-static {v0}, Lcom/android/incallui/external/CscParser;->access$300(Lcom/android/incallui/external/CscParser;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "CscParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMediaStore run : uri =>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/incallui/external/CscParser;->access$402(Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_1
.end method
