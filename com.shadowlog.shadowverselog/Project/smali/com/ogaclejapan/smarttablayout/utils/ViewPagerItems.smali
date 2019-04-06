.class public Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;
.super Lcom/ogaclejapan/smarttablayout/utils/PagerItems;
.source "ViewPagerItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ogaclejapan/smarttablayout/utils/PagerItems",
        "<",
        "Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/PagerItems;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;

    invoke-direct {v0, p0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
