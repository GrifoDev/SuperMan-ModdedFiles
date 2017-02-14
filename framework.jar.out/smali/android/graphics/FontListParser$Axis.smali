.class public Landroid/graphics/FontListParser$Axis;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field public final styleValue:F

.field public final tag:I


# direct methods
.method constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/FontListParser$Axis;->tag:I

    iput p2, p0, Landroid/graphics/FontListParser$Axis;->styleValue:F

    return-void
.end method
