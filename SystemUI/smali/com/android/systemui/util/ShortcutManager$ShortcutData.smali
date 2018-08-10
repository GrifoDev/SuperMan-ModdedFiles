.class Lcom/android/systemui/util/ShortcutManager$ShortcutData;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutData"
.end annotation


# instance fields
.field enabled:Z

.field mAppLabel:Ljava/lang/String;

.field mComponentName:Landroid/content/ComponentName;

.field mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/ShortcutManager$ShortcutData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager$ShortcutData;-><init>()V

    return-void
.end method
