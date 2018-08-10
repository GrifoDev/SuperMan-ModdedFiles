.class Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$4;
.super Ljava/lang/Object;
.source "AdditionalInformationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setSpinnerFooterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get3(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method
