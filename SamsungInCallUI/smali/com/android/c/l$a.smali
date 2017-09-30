.class public final Lcom/android/c/l$a;
.super Ljava/io/BufferedReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/android/c/l$a;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/c/l$a;->a:J

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/c/l$a;->a:J

    iput-object v2, p0, Lcom/android/c/l$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/c/l$a;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/android/c/l$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/android/c/l$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/c/l$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/c/l$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/c/l$a;->b:Z

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/c/l$a;->a:J

    sub-long v2, v4, v2

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/c/l$a;->a:J

    goto :goto_0
.end method
