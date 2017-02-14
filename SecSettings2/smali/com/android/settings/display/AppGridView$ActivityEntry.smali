.class Lcom/android/settings/display/AppGridView$ActivityEntry;
.super Ljava/lang/Object;
.source "AppGridView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/display/AppGridView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/ResolveInfo;

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->info:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/display/AppGridView$ActivityEntry;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/display/AppGridView$ActivityEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView$ActivityEntry;->compareTo(Lcom/android/settings/display/AppGridView$ActivityEntry;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    return-object v0
.end method
