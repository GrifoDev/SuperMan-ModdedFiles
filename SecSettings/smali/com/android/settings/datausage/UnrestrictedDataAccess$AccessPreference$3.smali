.class Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$3;
.super Ljava/lang/Object;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$3;->this$1:Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$3;->this$1:Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get4(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;->isEnabled:Z

    :cond_0
    return v2
.end method
