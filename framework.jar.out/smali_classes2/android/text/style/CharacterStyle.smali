.class public abstract Landroid/text/style/CharacterStyle;
.super Ljava/lang/Object;
.source "CharacterStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/CharacterStyle$Passthrough;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;
    .locals 1

    instance-of v0, p0, Landroid/text/style/MetricAffectingSpan;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/style/MetricAffectingSpan$Passthrough;

    check-cast p0, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, p0}, Landroid/text/style/MetricAffectingSpan$Passthrough;-><init>(Landroid/text/style/MetricAffectingSpan;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/style/CharacterStyle$Passthrough;

    invoke-direct {v0, p0}, Landroid/text/style/CharacterStyle$Passthrough;-><init>(Landroid/text/style/CharacterStyle;)V

    return-object v0
.end method


# virtual methods
.method public getUnderlying()Landroid/text/style/CharacterStyle;
    .locals 0

    return-object p0
.end method

.method public abstract updateDrawState(Landroid/text/TextPaint;)V
.end method
