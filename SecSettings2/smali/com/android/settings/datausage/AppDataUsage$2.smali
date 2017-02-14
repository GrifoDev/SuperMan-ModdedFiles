.class Lcom/android/settings/datausage/AppDataUsage$2;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->-get4(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/datausage/SpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide v2, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/AppDataUsage;->-set3(Lcom/android/settings/datausage/AppDataUsage;J)J

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide v2, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/AppDataUsage;->-set1(Lcom/android/settings/datausage/AppDataUsage;J)J

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->-wrap2(Lcom/android/settings/datausage/AppDataUsage;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
