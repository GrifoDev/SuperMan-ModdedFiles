.class Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;
.super Ljava/lang/Object;
.source "NavigationbarColorPreference.java"

# interfaces
.implements Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->-wrap2(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;I)V

    return-void
.end method
