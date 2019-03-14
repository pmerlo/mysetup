(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(neotree
    magit
    swiper
    yaml-mode
    zenburn-theme))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/config")

