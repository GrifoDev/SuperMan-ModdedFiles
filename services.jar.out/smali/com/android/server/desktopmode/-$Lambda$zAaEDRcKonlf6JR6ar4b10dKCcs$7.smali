.class final synthetic Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/desktopmode/UiManager;

    iget v1, p0, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;->-$f0:I

    iget v2, p0, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;->-$f1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->lambda$-com_android_server_desktopmode_UiManager_11410(II)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;->-$f0:I

    iput p2, p0, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;->-$f1:I

    iput-object p3, p0, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onServiceConnected()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;->$m$0()V

    return-void
.end method
