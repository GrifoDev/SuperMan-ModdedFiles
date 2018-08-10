.class Lcom/samsung/android/settings/qstile/PowerSavingTile$3;
.super Ljava/lang/Object;
.source "PowerSavingTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/PowerSavingTile;->checkScreenState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    iput p2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;->this$0:Lcom/samsung/android/settings/qstile/PowerSavingTile;

    iget v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;->val$mode:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->-wrap0(Lcom/samsung/android/settings/qstile/PowerSavingTile;I)V

    return-void
.end method
