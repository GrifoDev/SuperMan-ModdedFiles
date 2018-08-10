.class Lcom/android/systemui/analytics/DataCollector$2;
.super Ljava/lang/Object;
.source "DataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/analytics/DataCollector;->queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/analytics/DataCollector;

.field final synthetic val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;


# direct methods
.method constructor <init>(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/analytics/SensorLoggerSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector$2;->this$0:Lcom/android/systemui/analytics/DataCollector;

    iput-object p2, p0, Lcom/android/systemui/analytics/DataCollector$2;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v5, p0, Lcom/android/systemui/analytics/DataCollector$2;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v5}, Lcom/android/systemui/analytics/SensorLoggerSession;->toProto()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/analytics/DataCollector$2;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v5}, Lcom/android/systemui/analytics/DataCollector;->-get1(Lcom/android/systemui/analytics/DataCollector;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/analytics/DataCollector$2;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v5}, Lcom/android/systemui/analytics/SensorLoggerSession;->getResult()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/systemui/analytics/DataCollector$2;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v5}, Lcom/android/systemui/analytics/DataCollector;->-get0(Lcom/android/systemui/analytics/DataCollector;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/bad_touches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trace_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/good_touches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
