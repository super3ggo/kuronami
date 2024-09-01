;;; kuronami-theme.el --- A deep blue theme with cool autumnal colors -*- lexical-binding: t; -*-

;; Author: inj0h <>
;; Version: 2.0
;; Filename: kuronami-theme.el
;; Package-Requires: ((emacs "24.1"))
;; URL: https://github.com/inj0h/kuronami
;; License: GPL-3+
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:

;; An Emacs theme with cool autumnal colors against a deep blue background.
;; Inspired by other Emacs themes - Deeper Blue shipped with most modern
;; versions of GNU Emacs, Gruber Darker by Alexey Kutepov, and Naysayer by
;; Nick Aversano. The character designs of Ayanami Rei and
;; Ayanami Rei (Tentative Name) from the anime Neon Genesis Evangelion by
;; Studio Khara/Gainax provided the main source of inspiration regarding the
;; central ideas behind the colors used in this theme.
;;
;; This theme advocates the oxymoronic minimalist Emacs user. Popular third
;; party packages most likely do not have overwritten colors. Further, many
;; default Faces that Inherit other default Faces do not get overwritten.
;; Generally, only Faces that do not use Inherit have themed coloring though
;; exceptions exist.
;;
;; A total of fifteen colors make up this theme. Seven of them originate from
;; other Emacs themes or various Internet samples using color identifying
;; software. The remaining colors then derive from these seven. The website
;; https://www.color-hex.com provided much needed assistance in selecting these
;; derived colors according to the Analogous, Complementary, Triadic, Tint, and
;; Shade properties provided there. This theme's color declarations contain
;; in-line comments, attempting to explain the respective derivation process in
;; addition to crediting sources accordingly.
;;
;; Kuronami colors with the same name generally have a dark-less-intense to a
;; light-more-intense arrangement such that the former gets a lower number and
;; the latter, a higher number. For example, "kuronami-blue0" has a darker, less
;; intense blue than "kuronami-blue1," which has a lighter, more intense blue.
;;
;; The author has historically struggled seeing and describing colors as most
;; others do, so please have patience if these descriptions do not make sense.

;; Color wheel tool used = https://colordesigner.io/color-wheel

;;; Code:

;; TODO() Update this description.
(deftheme kuronami
  "Cool autumnal colors against a deep blue background.")

;; TODO() Update blue2 so that it pops more next to violet0.
;; TODO() Find some other use for green0?
;; TODO() Add note about only providing colors for vanilla packages.
(let ((kuronami-black0  "#181a26")  ; Vanilla Emacs theme Deeper Blue default background color
      (kuronami-black1  "#464751")  ; black0 -> 2 tints lighter
      (kuronami-blue0   "#2e41ac")  ; Random image of blue Unit-00
      (kuronami-blue1   "#7fbbe9")  ; Official Ayanami Blue!
      (kuronami-blue2   "#acc7db")  ; blue1 -> monochromatic lighter (website does not produce the same hex code)
      (kuronami-green0  "#65bab4")  ; blue1 -> analogous #7fe9e2 -> 2 shades darker
      (kuronami-orange0 "#e9ad7f")  ; blue1 -> triadic
      (kuronami-red0    "#e97f86")  ; orange0 -> analogous
      (kuronami-violet0 "#a9acc8")) ; black0 -> monochromatic lighter (website does not produce the same hex code)

  (custom-theme-set-faces
   `kuronami

   ;; UI:
   `(cursor              ((t (:background ,kuronami-red0))))
   `(default             ((t (:background ,kuronami-black0 :foreground ,kuronami-violet0))))
   `(fringe              ((t (:background ,kuronami-black0))))
   `(highlight           ((t (:background ,kuronami-blue0))))
   `(isearch             ((t (:background ,kuronami-red0 :foreground ,kuronami-black0))))
   `(line-number         ((t (:inherit default :foreground ,kuronami-blue2))))
   `(link                ((t (:foreground ,kuronami-blue1 :italic t :underline t))))
   `(link-visited        ((t (:foreground ,kuronami-violet0 :italic t :underline t))))
   `(match               ((t (:inherit lazy-highlight))))
   `(minibuffer-prompt   ((t (:foreground ,kuronami-blue1))))
   `(region              ((t (:extend nil :background ,kuronami-blue0)))) ; Like Vim!
   `(show-paren-match    ((t (:background ,kuronami-blue1))))
   `(show-paren-mismatch ((t (:background ,kuronami-red0))))

   `(font-lock-builtin-face           ((t (:inherit default))))
   `(font-lock-comment-face           ((t (:foreground ,kuronami-blue1 :italic t))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-constant-face          ((t (:inherit default))))
   `(font-lock-doc-face               ((t (:inherit font-lock-comment-face))))
   `(font-lock-function-name-face     ((t (:inherit default))))
   `(font-lock-keyword-face           ((t (:inherit default))))
   `(font-lock-negation-char-face     ((t (:inherit default))))
   `(font-lock-preprocessor-face      ((t (:inherit default))))
   `(font-lock-string-face            ((t (:foreground ,kuronami-green0))))
   `(font-lock-type-face              ((t (:inherit default))))
   `(font-lock-variable-name-face     ((t (:inherit default))))

   ;; Listed alphabetically from this point.

   `(compilation-column-number  ((t (:foreground ,kuronami-blue2))))
   `(compilation-line-number    ((t (:foreground ,kuronami-blue2))))
   `(compilation-mode-line-exit ((t (:inherit compilation-info))))
   `(compilation-mode-line-fail ((t (:inherit compilation-error))))

   `(completions-common-part      ((t (:foreground ,kuronami-violet0))))
   `(completions-first-difference ((t (:foreground ,kuronami-red0 :bold t))))

   `(dired-directory ((t (:foreground ,kuronami-blue2))))
   `(dired-symlink   ((t (:foreground ,kuronami-blue1))))

   `(flyspell-duplicate ((t nil))) ; Setting "flyspell-duplicate-distance" does not work for Emacs 27.2 on macOS x86 so disable the Face.
   `(flyspell-incorrect ((t (:underline (:color ,kuronami-red0 :style wave)))))

   `(ido-first-match ((t (:foreground ,kuronami-orange0))))
   `(ido-only-match  ((t (:foreground ,kuronami-red0 :bold t))))
   `(ido-subdir      ((t (:foreground ,kuronami-blue2))))

   `(mode-line           ((t (:background ,kuronami-violet0 :foreground ,kuronami-black0)))) ; Just colors. No "boxing" effect.
   `(mode-line-buffer-id ((t nil)))
   `(mode-line-emphasis  ((t nil)))
   `(mode-line-inactive  ((t (:background ,kuronami-black1 :foreground ,kuronami-violet0))))

   ;; This theme assumes the user has whitespace-style configured for the
   ;; following Faces:
   ;;
   ;; - empty
   ;; - face
   ;; - lines
   ;; - indentation
   ;; - missing-newline-at-eof
   ;; - newline
   ;; - space-after-tab
   ;; - space-before-tab
   ;; - space-mark
   ;; - spaces
   ;; - tab-mark
   ;; - tabs
   ;; - trailing
   ;;
   ;; whitespace-empty is disabled, i.e. this Face has no styling. The idea is
   ;; to include the empty Face in whitespace-style due to the function
   ;; whitespace-cleanup using this variable in order to determine how to remove
   ;; certain whitespace characters.
   ;;
   ;; By contrast, whitespace-newline does have applicable styling when the user
   ;; includes the newline-mark Face in whitespace-style.

   `(whitespace-empty                  ((t (:background nil :foreground nil))))
   `(whitespace-hspace                 ((t (:background ,kuronami-black0 :foreground ,kuronami-black1))))
   `(whitespace-indentation            ((t (:inherit whitespace-hspace))))
   `(whitespace-line                   ((t (:inherit whitespace-hspace))))
   `(whitespace-missing-newline-at-eof ((t (:background ,kuronami-orange0 :foreground ,kuronami-black1))))
   `(whitespace-newline                ((t (:inherit whitespace-hspace))))
   `(whitespace-space                  ((t (:inherit whitespace-hspace))))
   `(whitespace-space-after-tab        ((t (:inherit whitespace-hspace))))
   `(whitespace-space-before-tab       ((t (:inherit whitespace-hspace))))
   `(whitespace-tab                    ((t (:inherit whitespace-hspace))))
   `(whitespace-trailing               ((t (:inherit whitespace-missing-newline-at-eof)))))

  (custom-theme-set-variables
   'kuronami

   ;; TODO() Determine a more elegant way to do this?
   ;; TODO() Try adding just the color you want to change instead of referring
   ;;        to a Face with the color you want to use
   '(ibuffer-fontification-alist
     '((10 buffer-read-only
           line-number)
       (15 (and buffer-file-name
                (string-match ibuffer-compressed-file-name-regexp buffer-file-name))
           line-number)
       (20 (string-match "^\\*" (buffer-name))
           line-number)
       (25 (and (string-match "^ " (buffer-name)) (null buffer-file-name))
           italic)
       (30 (memq major-mode ibuffer-help-buffer-modes)
           line-number)
       (35 (derived-mode-p 'dired-mode)
           line-number) ; This is the color we actually want to change
       (40 (and (boundp 'emacs-lock-mode) emacs-lock-mode)
           ibuffer-locked-buffer)))
   )
  )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'kuronami)
(provide 'kuronami-theme)
;;; kuronami-theme.el ends here.
