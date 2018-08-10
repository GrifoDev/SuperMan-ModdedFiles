.class public Lcom/android/settings/dashboard/suggestions/SuggestionFeaturizer;
.super Ljava/lang/Object;
.source "SuggestionFeaturizer.java"


# instance fields
.field private final mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/suggestions/EventStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionFeaturizer;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    return-void
.end method
