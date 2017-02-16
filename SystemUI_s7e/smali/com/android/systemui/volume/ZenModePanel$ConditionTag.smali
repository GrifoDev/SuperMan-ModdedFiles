.class Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
.super Ljava/lang/Object;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionTag"
.end annotation


# instance fields
.field condition:Landroid/service/notification/Condition;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field lines:Landroid/view/View;

.field rb:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>()V

    return-void
.end method
