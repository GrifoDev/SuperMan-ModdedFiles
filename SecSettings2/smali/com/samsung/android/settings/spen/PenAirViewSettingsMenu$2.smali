.class Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$2;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->createAirViewSetting(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$2;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$2;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->changeColor(I)V

    return-void
.end method
