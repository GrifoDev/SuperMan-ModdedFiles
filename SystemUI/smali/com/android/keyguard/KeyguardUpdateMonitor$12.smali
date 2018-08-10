.class Lcom/android/keyguard/KeyguardUpdateMonitor$12;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set0(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget v0, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    const/4 v1, 0x1

    :cond_0
    return-void
.end method
