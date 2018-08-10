.class Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;
.super Landroid/os/AsyncTask;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/qstile/PowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSavingBatteryTimeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final SMART_MANAGER_BATTERY_LIFE_EXTENDED_TIME_IN_MINS:Ljava/lang/String;

.field private final SMART_MANAGER_BATTERY_LIFE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string/jumbo v0, "content://com.samsung.android.sm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "BatteryLife"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->SMART_MANAGER_BATTERY_LIFE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "extended_time_in_mins"

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->SMART_MANAGER_BATTERY_LIFE_EXTENDED_TIME_IN_MINS:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-static {v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->-get2(Lcom/samsung/android/settings/qstile/PowerSavingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->SMART_MANAGER_BATTERY_LIFE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "extended_time_in_mins"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    const-string/jumbo v1, "extended_time_in_mins"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->-set0(Lcom/samsung/android/settings/qstile/PowerSavingTile;J)J

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PowerSavingBatteryTimeTask, doInBackground during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :catch_0
    move-exception v7

    invoke-static {}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IllegalArgumentException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PowerSavingBatteryTimeTask - mBatteryExtendedTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-static {v2}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->-get1(Lcom/samsung/android/settings/qstile/PowerSavingTile;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
