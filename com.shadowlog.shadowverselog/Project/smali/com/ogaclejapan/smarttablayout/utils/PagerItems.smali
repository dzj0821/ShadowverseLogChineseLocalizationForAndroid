.class public abstract Lcom/ogaclejapan/smarttablayout/utils/PagerItems;
.super Ljava/util/ArrayList;
.source "PagerItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ogaclejapan/smarttablayout/utils/PagerItem;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    .local p0, "this":Lcom/ogaclejapan/smarttablayout/utils/PagerItems;, "Lcom/ogaclejapan/smarttablayout/utils/PagerItems<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItems;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/ogaclejapan/smarttablayout/utils/PagerItems;, "Lcom/ogaclejapan/smarttablayout/utils/PagerItems<TT;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItems;->context:Landroid/content/Context;

    return-object v0
.end method
