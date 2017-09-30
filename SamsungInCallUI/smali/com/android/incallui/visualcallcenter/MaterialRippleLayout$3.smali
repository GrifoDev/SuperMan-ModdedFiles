.class Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$3;
.super Landroid/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$3;->this$0:Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->getRippleAlpha()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    invoke-virtual {p0, p1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$3;->get(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleAlpha(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$3;->set(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Ljava/lang/Integer;)V

    return-void
.end method
