.class Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;
.super Ljava/lang/Object;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericMotionListener"
.end annotation


# instance fields
.field public isEnabled:Z

.field private position:I

.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method private constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->isEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x2002

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    if-ne v1, v2, :cond_0

    iput v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-virtual {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->isEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->performClick()V

    :cond_1
    iput v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->position:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
