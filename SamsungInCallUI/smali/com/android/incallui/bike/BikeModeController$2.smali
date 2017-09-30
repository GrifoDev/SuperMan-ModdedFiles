.class Lcom/android/incallui/bike/BikeModeController$2;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/bike/BikeModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/bike/BikeModeController;


# direct methods
.method constructor <init>(Lcom/android/incallui/bike/BikeModeController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeController$2;->this$0:Lcom/android/incallui/bike/BikeModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController$2;->this$0:Lcom/android/incallui/bike/BikeModeController;

    invoke-static {v0, p1}, Lcom/android/incallui/bike/BikeModeController;->access$100(Lcom/android/incallui/bike/BikeModeController;Z)V

    return-void
.end method
