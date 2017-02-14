.class Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;
.super Ljava/lang/Object;
.source "SecSummaryLayoutCHN.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-get3(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
