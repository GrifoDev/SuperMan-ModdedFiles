.class final Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringDrawableContainer"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
