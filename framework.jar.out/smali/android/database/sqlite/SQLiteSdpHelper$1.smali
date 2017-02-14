.class Landroid/database/sqlite/SQLiteSdpHelper$1;
.super Landroid/database/sqlite/SQLiteSdpListener;
.source "SQLiteSdpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/sqlite/SQLiteSdpHelper;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteSdpHelper;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteSdpHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/database/sqlite/SQLiteSdpHelper$1;->this$0:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineRemoved()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onStateChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper$1;->this$0:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteSdpHelper;->-get0(Landroid/database/sqlite/SQLiteSdpHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "PRAGMA sdp_locked"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper$1;->this$0:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteSdpHelper;->-get0(Landroid/database/sqlite/SQLiteSdpHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "PRAGMA sdp_unlocked"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
