.class Lcom/samsung/android/settings/location/LocationDropDownPreference$1;
.super Ljava/lang/Object;
.source "LocationDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/LocationDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference$1;->this$0:Lcom/samsung/android/settings/location/LocationDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference$1;->this$0:Lcom/samsung/android/settings/location/LocationDropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

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
