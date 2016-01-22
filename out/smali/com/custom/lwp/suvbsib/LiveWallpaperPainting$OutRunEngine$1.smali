.class Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine$1;
.super Ljava/lang/Object;
.source "LiveWallpaperPainting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;


# direct methods
.method constructor <init>(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine$1;->this$1:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine$1;->this$1:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;

    invoke-virtual {v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->drawFrame()V

    .line 288
    return-void
.end method
