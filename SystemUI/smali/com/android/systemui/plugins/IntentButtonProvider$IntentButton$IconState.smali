.class public Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
.super Ljava/lang/Object;
.source "IntentButtonProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconState"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/CharSequence;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public isVisible:Z

.field public tint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    iput-boolean v1, p0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    return-void
.end method
