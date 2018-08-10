.class public Lcom/android/settingslib/accessibility/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# static fields
.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settingslib/accessibility/AccessibilityUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
